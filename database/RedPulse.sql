SET
SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET
time_zone = "+06:00";


--
-- Database: `RedPulse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin`
(
    `id`       bigint(20) NOT NULL,
    `name`     varchar(255) NOT NULL,
    `username` varchar(255) NOT NULL,
    `email`    varchar(255) NOT NULL,
    `pwd`      varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `pwd`)
VALUES
    (2, 'BBMS', 'BBMS', 'bbmm@gmail.com', '12345678'),
    (3, 'redwan', 'redwan', 'redwan@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
CREATE TABLE `blood`
(
    `id`  bigint(20) NOT NULL,
    `AP`  bigint(20) DEFAULT NULL,
    `AN`  bigint(20) DEFAULT NULL,
    `BP`  bigint(20) DEFAULT NULL,
    `BN`  bigint(20) DEFAULT NULL,
    `ABP` bigint(20) DEFAULT NULL,
    `ABN` bigint(20) DEFAULT NULL,
    `OP`  bigint(20) DEFAULT NULL,
    `ON`  bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `AP`, `AN`, `BP`, `BN`, `ABP`, `ABN`, `OP`, `ON`)
VALUES (1, 0, 0, 1, 5, 6, 2, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
CREATE TABLE `donate`
(
    `id`       bigint(20) NOT NULL,
    `donor_id` bigint(20) NOT NULL,
    `username` varchar(255) NOT NULL,
    `disease`  varchar(255) NOT NULL,
    `blood`    varchar(10)  NOT NULL,
    `unit`     bigint(20) NOT NULL,
    `status`   varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`id`, `donor_id`, `username`, `disease`, `blood`, `unit`, `status`) VALUES
                                                                                              (2, 6, 'rabbi', 'Depression', 'O-', 1, 'approved'),
                                                                                              (3, 7, 'redwan', 'mone dukkho', 'A+', 3, 'approved'),
                                                                                              (4, 7, 'redwan', 'Pressure Anek', 'A+', 6, 'approved'),
                                                                                              (5, 7, 'redwan', '1st', 'A+', 10, 'approved'),
                                                                                              (7, 7, 'redwan', '2nd', 'A+', 2, 'approved'),
                                                                                              (8, 7, 'redwan', 'test3', 'A+', 2, 'rejected'),
                                                                                              (9, 7, 'redwan', 'tryAgain', 'A+', 1, 'pending'),
                                                                                              (10, 7, 'redwan', 'tryAgain2', 'A+', 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
CREATE TABLE `donor`
(
    `id`       bigint(20) NOT NULL,
    `name`     varchar(255) NOT NULL,
    `username` varchar(255) NOT NULL,
    `email`    varchar(255) NOT NULL,
    `pwd`      varchar(255) NOT NULL,
    `blood`    varchar(10)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `username`, `email`, `pwd`, `blood`) VALUES
                                                                            (6, 'rabbi', 'rabbi', 'rabbi@gmail.com', '$2y$10$2g8TRgDNzRMfs.RPuDfK7u9BQAfLGby4y.FJJB/BCvJksghN9I2Ra', 'O-'),
                                                                            (7, 'redwan', 'redwan', 'redwan@gmail.com', '$2y$10$XBpHGzjZV./E6ebN8ovK4e6xommtIhbWM9y84DBVqnZBI47D2zJsC', 'A+'),
                                                                            (8, 'ratul', 'ratul', 'ratul@gmail.com', '$2y$10$eTsrs4PC5l/CLmtecbO05ekg5UmsD1RGF6T8hb9FZlBbiSNYdy8Wi', 'B-'),
                                                                            (9, 'rakib', 'rakib', 'rakib@gmail.com', '$2y$10$TqAhC/eNO6FMKL5AHrmEhuRf2innxG39PpJpQJnMepezvatdnaH1q', 'O-'),
                                                                            (10, 'fahim', 'fahim', 'fahim@gmail.com', '$2y$10$TiVtAwTTKXv87VPXJtX1I.mhQ4tfnPM24bWeDl5sSMEvHkcV4iE9G', 'B-'),
                                                                            (11, 'simul', 'simul', 'simul@gmail.com', '$2y$10$awq7eaqfkydmN13z41qlYOtSt1eduK.1iRIKThuzxGR0PMGOuj0Ae', 'O-'),
                                                                            (12, 'riyan', 'riyan', 'riyan@gmail.com', '$2y$10$SrpxTMeDHG0Z34vdjQGfWuof3EtsZ9ZixOQhjV3vBBg6xCOIH.WPK', 'AB+'),
                                                                            (13, 'shovo', 'shovo', 'shovo@gmail.com', '$2y$10$NZ3Flp8j1KoAHFttBFdkA.OTgN5D.WcYA/tv43yHFVxqgxYiZ6oqO', 'O+'),
                                                                            (14, 'rahul', 'rahul', 'rahul@gmail.com', '$2y$10$tNbPcj2skszlIH492hMUgum7l/uoN3lIF7uOLtMkZtA6WS8RhtvMm', 'B-');


-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`
(
    `id`       bigint(20) NOT NULL,
    `name`     varchar(255) NOT NULL,
    `username` varchar(255) NOT NULL,
    `email`    varchar(255) NOT NULL,
    `pwd`      varchar(255) NOT NULL,
    `blood`    varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `username`, `email`, `pwd`, `blood`) VALUES
                                                                              (13, 'redwan', 'redwan', 'redwan@gmail.com', '$2y$10$IEucEUBlePmhfsZfGxAv6.lnWzzgtjWVVvcYGuuVrmj8WmsQ2BNuG', 'A+'),
                                                                              (14, 'rabbi', 'rabbi', 'rabbi@gmail.com', '$2y$10$aNp1EnulSTuz2TAoKTinCO7zAJFEsJLu244hHIB6ZpwMIxmpq7.le', 'O-'),
                                                                              (15, 'razzak', 'razzak', 'arazzak@gmail.com', '$2y$10$LGzuZKB89KaGrBEHy0YfNuOQPiPSV94QgIvMxbhxqyYQK27OLVH5S', 'A+');


-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request`
(
    `id`         bigint(20) NOT NULL,
    `patient_id` bigint(20) NOT NULL,
    `username`   varchar(255) NOT NULL,
    `reason`     varchar(255) NOT NULL,
    `blood`      varchar(10)  NOT NULL,
    `unit`       bigint(20) NOT NULL,
    `status`     varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `patient_id`, `username`, `reason`, `blood`, `unit`, `status`) VALUES
                                                                                                (2, 13, 'redwan', 'Fever', 'A+', 2, 'rejected'),
                                                                                                (3, 15, 'razzak', 'test', 'A+', 2, 'approved'),
                                                                                                (4, 13, 'redwan', 'need', 'A+', 1, 'approved'),
                                                                                                (5, 13, 'redwan', 'need 2', 'A+', 4, 'approved'),
                                                                                                (6, 13, 'redwan', 'tesstt', 'A+', 5, 'rejected due to insufficient blood stock of A+'),
                                                                                                (7, 13, 'redwan', 'test2', 'A+', 4, 'rejected'),
                                                                                                (8, 13, 'redwan', 'test 50', 'A+', 2, 'approved'),
                                                                                                (9, 13, 'redwan', 'NeedEm', 'A+', 1, 'pending'),
                                                                                                (10, 13, 'redwan', 'NeedEm2', 'A+', 1, 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
    ADD PRIMARY KEY (`id`),
  ADD KEY `fk_donate_donor` (`donor_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
    ADD PRIMARY KEY (`id`),
  ADD KEY `fk_request_patient` (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donate`
--
ALTER TABLE `donate`
    ADD CONSTRAINT `fk_donate_donor` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
    ADD CONSTRAINT `fk_request_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;

-- 1. Join Example: Joining donate, donor, and request tables
SELECT
    donor.name AS donor_name,
    donate.unit AS donate_unit,
    request.reason AS request_reason,
    request.unit AS requested_unit
FROM
    donate
        JOIN
    donor ON donate.donor_id = donor.id
        JOIN
    request ON request.patient_id = donor.id
WHERE
    request.status = 'approved';

-- 2. Aggregating Data: Showing total donations per blood type
SELECT
    donor.blood AS blood_type,
    COUNT(donate.id) AS total_donations
FROM
    donate
        JOIN
    donor ON donate.donor_id = donor.id
GROUP BY
    donor.blood;

-- 3. Filtering Data: Showing approved donation requests with patient blood type
SELECT
    request.id AS request_id,
    patient.name AS patient_name,
    patient.blood AS patient_blood,
    request.unit AS requested_unit,
    request.status AS request_status
FROM
    request
        JOIN
    patient ON request.patient_id = patient.id
WHERE
    request.status = 'approved';

-- 4. Subquery: Donors who donated more than the average number of units
SELECT
    donor.name AS donor_name,
    SUM(donate.unit) AS total_donated
FROM
    donate
        JOIN
    donor ON donate.donor_id = donor.id
GROUP BY
    donor.id
HAVING
    total_donated > (SELECT AVG(unit) FROM donate);

-- 5. Join and Sorting: Sorting approved donation requests by the most recent
SELECT
    request.id AS request_id,
    patient.name AS patient_name,
    request.reason AS reason,
    request.unit AS unit_requested,
    request.status AS status
FROM
    request
        JOIN
    patient ON request.patient_id = patient.id
ORDER BY
    request.id DESC;
