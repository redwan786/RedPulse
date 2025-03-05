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
    (2, 'BBEM', 'BBEp', 'bbmm@gmail.com', '123'),
    (3, 'ajf', '123', 'doctor123@gmail.com', '12345678');

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

INSERT INTO `donate` (`id`, `donor_id`, `username`, `disease`, `blood`, `unit`, `status`)
VALUES (1, 5, 'redwan786', 'nothing', 'B-', 1, 'approved');

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

INSERT INTO `donor` (`id`, `name`, `username`, `email`, `pwd`, `blood`)
VALUES (5, 'Redwan Hossen', 'redONE', 'me.redwan@gmail.com',
        '$2y$10$Kd5ykwrCfU6VIoS/0M5uEey9LgE8331ff8nwAYMnKHk2VLD678OD.', 'B-');

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

INSERT INTO `patient` (`id`, `name`, `username`, `email`, `pwd`, `blood`)
VALUES (12, 'Redwan Hossen', 'redONE', 'me.redwan@gmail.com',
        '$2y$10$CKRsoSpPcEk7kGBNVNP7xuND9FhVLqLDdkEGCxkqO3uoghC5zz9Ha', 'B+');

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

INSERT INTO `request` (`id`, `patient_id`, `username`, `reason`, `blood`, `unit`, `status`)
VALUES (1, 12, 'redONE', 'low blood levels', 'B+', 2, 'approved');

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
