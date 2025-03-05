<?php

declare(strict_types= 1);
require_once("../includes/session.inc.php");
require_once("../includes/dbh.inc.php");

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $pwd = $_POST["pwd"];
    $username = $_POST["username"];

    try {
        // Errors array
        $errors = [];

        if (checkInput($pwd, $username)) {
            $errors["check_input"] = "Fill all fields!";
        }
        if (!username_exists($pdo, $username, $pwd)) {
            $errors["incorrect"] = "Incorrect Login Info!";
        }

        if ($errors) {
            $_SESSION["admin_error_login"] = $errors;
            header("Location: login.php");
            die();
        }

        // Login successful, set session
        $_SESSION["admin"] = $username;

        header("Location: dashboard.php"); // Redirect to admin dashboard
        exit();

    } catch (PDOException $e) {
        die("Query failed: " . $e->getMessage());
    }
} else {
    header("Location: login.php");
    die();
}

// Function to check empty input
function checkInput(string $pwd, string $username): bool {
    return empty($pwd) || empty($username);
}

// Function to check if username exists and password matches
function username_exists(object $pdo, string $username, string $pwd): bool {
    $query = "SELECT * FROM admin WHERE username = :username;";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(":username", $username);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$result) return false;

    // 🔹 Direct password matching (Without Hashing)
    return $pwd === $result["pwd"];
}

?>
