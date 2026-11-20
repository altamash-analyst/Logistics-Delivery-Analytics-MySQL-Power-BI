-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: logistics_delivery_analytics
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_logistics_shipments`
--

DROP TABLE IF EXISTS `vw_logistics_shipments`;
/*!50001 DROP VIEW IF EXISTS `vw_logistics_shipments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_logistics_shipments` AS SELECT 
 1 AS `shipment_id`,
 1 AS `shipment_date`,
 1 AS `expected_delivery_date`,
 1 AS `actual_delivery_date`,
 1 AS `shipment_status`,
 1 AS `delivery_type`,
 1 AS `payment_method`,
 1 AS `package_weight_kg`,
 1 AS `shipping_revenue`,
 1 AS `shipping_cost`,
 1 AS `fuel_cost`,
 1 AS `driver_cost`,
 1 AS `total_cost`,
 1 AS `profit`,
 1 AS `on_time_flag`,
 1 AS `delivery_days`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `customer_gender`,
 1 AS `customer_age`,
 1 AS `customer_city`,
 1 AS `customer_state`,
 1 AS `customer_region`,
 1 AS `customer_segment`,
 1 AS `warehouse_id`,
 1 AS `warehouse_name`,
 1 AS `warehouse_city`,
 1 AS `warehouse_state`,
 1 AS `warehouse_region`,
 1 AS `warehouse_type`,
 1 AS `driver_id`,
 1 AS `driver_name`,
 1 AS `driver_gender`,
 1 AS `driver_age`,
 1 AS `vehicle_type`,
 1 AS `vehicle_number`,
 1 AS `experience_years`,
 1 AS `driver_rating`,
 1 AS `driver_region`,
 1 AS `route_id`,
 1 AS `route_name`,
 1 AS `origin_city`,
 1 AS `origin_state`,
 1 AS `destination_city`,
 1 AS `destination_state`,
 1 AS `route_region`,
 1 AS `distance_km`,
 1 AS `route_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_logistics_shipments`
--

/*!50001 DROP VIEW IF EXISTS `vw_logistics_shipments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_logistics_shipments` AS select `s`.`shipment_id` AS `shipment_id`,`s`.`shipment_date` AS `shipment_date`,`s`.`expected_delivery_date` AS `expected_delivery_date`,`s`.`actual_delivery_date` AS `actual_delivery_date`,`s`.`shipment_status` AS `shipment_status`,`s`.`delivery_type` AS `delivery_type`,`s`.`payment_method` AS `payment_method`,`s`.`package_weight_kg` AS `package_weight_kg`,`s`.`shipping_revenue` AS `shipping_revenue`,`s`.`shipping_cost` AS `shipping_cost`,`s`.`fuel_cost` AS `fuel_cost`,`s`.`driver_cost` AS `driver_cost`,((`s`.`shipping_cost` + `s`.`fuel_cost`) + `s`.`driver_cost`) AS `total_cost`,(((`s`.`shipping_revenue` - `s`.`shipping_cost`) - `s`.`fuel_cost`) - `s`.`driver_cost`) AS `profit`,(case when ((`s`.`shipment_status` = 'Delivered') and (`s`.`actual_delivery_date` <= `s`.`expected_delivery_date`)) then 1 else 0 end) AS `on_time_flag`,(to_days(`s`.`actual_delivery_date`) - to_days(`s`.`shipment_date`)) AS `delivery_days`,`c`.`customer_id` AS `customer_id`,`c`.`customer_name` AS `customer_name`,`c`.`gender` AS `customer_gender`,`c`.`age` AS `customer_age`,`c`.`city` AS `customer_city`,`c`.`state` AS `customer_state`,`c`.`region` AS `customer_region`,`c`.`customer_segment` AS `customer_segment`,`w`.`warehouse_id` AS `warehouse_id`,`w`.`warehouse_name` AS `warehouse_name`,`w`.`city` AS `warehouse_city`,`w`.`state` AS `warehouse_state`,`w`.`region` AS `warehouse_region`,`w`.`warehouse_type` AS `warehouse_type`,`d`.`driver_id` AS `driver_id`,`d`.`driver_name` AS `driver_name`,`d`.`gender` AS `driver_gender`,`d`.`age` AS `driver_age`,`d`.`vehicle_type` AS `vehicle_type`,`d`.`vehicle_number` AS `vehicle_number`,`d`.`experience_years` AS `experience_years`,`d`.`driver_rating` AS `driver_rating`,`d`.`region` AS `driver_region`,`r`.`route_id` AS `route_id`,`r`.`route_name` AS `route_name`,`r`.`origin_city` AS `origin_city`,`r`.`origin_state` AS `origin_state`,`r`.`destination_city` AS `destination_city`,`r`.`destination_state` AS `destination_state`,`r`.`region` AS `route_region`,`r`.`distance_km` AS `distance_km`,`r`.`route_type` AS `route_type` from ((((`shipments` `s` join `customers` `c` on((`s`.`customer_id` = `c`.`customer_id`))) join `warehouses` `w` on((`s`.`warehouse_id` = `w`.`warehouse_id`))) join `drivers` `d` on((`s`.`driver_id` = `d`.`driver_id`))) join `routes` `r` on((`s`.`route_id` = `r`.`route_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-01 18:53:20
