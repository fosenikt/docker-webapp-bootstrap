--
-- Tabellstruktur for tabell `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `organization_number` int(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `zip` varchar(16) NOT NULL, 
  `postal` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customers` (`id`, `name`, `organization_number`, `address`, `zip`, `postal`) VALUES
(1, 'Fosen IKT', 123, 'Rådhusveien 13', '7100', 'Rissa');



--
-- Tabellstruktur for tabell `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `mail` varchar(256) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `mail`, `customer_id`, `firstname`, `lastname`, `password`, `phone`) VALUES
(1, 'post@fosenikt.no', 1, 'Robert', 'Andresen', '927FDB41EA585D72DBA386206A9F6DC797B373F78018C641253F2D524E784BB8', '12345678');

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `customers_activation`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers_activation`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;