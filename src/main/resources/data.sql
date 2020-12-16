-- Insertion des rôles nécessaires
INSERT IGNORE INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_COMPANY'),
(3, 'ROLE_STUDENT');


--
-- INSERTION DE COMPTES TEST
--

-- INSERTION COMPANY TEST --
INSERT IGNORE INTO `company` (`id`, `description`, `mail_address`, `name`, `state`, `website_url`) VALUES
(1, '', 'company@test.com', 'Entreprise Test Industry', 'ENREGISTRE', 'url');

-- INSERTION USER ADMIN --
INSERT IGNORE INTO `user` (`id`, `firstname`, `lastname`, `mail_address`, `password`, `phone_number`) VALUES
(1, 'Admin', 'TEST', 'admin@test.com', '$2y$10$yY66fnZ1IdrxaxDPezNlKunsrZQ/9byNLwreYs1cjp1zoqMfc0v36', NULL);
INSERT IGNORE INTO `admin` (`id`, `id_user`) VALUES (1, 1);

-- INSERTION USER COMPANY_EMPLOYEE --
INSERT IGNORE INTO `user` (`id`, `firstname`, `lastname`, `mail_address`, `password`, `phone_number`) VALUES
(2, 'Employee', 'TEST', 'employee@test.com', '$2y$10$yY66fnZ1IdrxaxDPezNlKunsrZQ/9byNLwreYs1cjp1zoqMfc0v36', NULL);
INSERT IGNORE INTO `company_employee` (`id_company`, `id_employee`) VALUES (1, 2);

-- INSERTION USER STUDENT --
INSERT IGNORE INTO `user` (`id`, `firstname`, `lastname`, `mail_address`, `password`, `phone_number`) VALUES
(3, 'Student', 'TEST', 'student@test.com', '$2y$10$yY66fnZ1IdrxaxDPezNlKunsrZQ/9byNLwreYs1cjp1zoqMfc0v36', NULL);
INSERT IGNORE INTO `student` (`id`, `description`, `label`, `school_year`, `state`, `id_user`) VALUES
(1, NULL, NULL, '5A', 'ENREGISTRE', 3);

-- INSERTION OFFERS --
INSERT IGNORE INTO `offer` (`id`, `label`, `description`, `city`, `mail_address`, `creation_date`, `created_by_user`, `state`) VALUES
(1, 'Offer TEST', 'DESCRIPTION_TEST', 'CITY', 'contact-offer@test.com', '2010-04-02', 2, 'BROUILLON');
INSERT IGNORE INTO `offer` (`id`, `label`, `description`, `city`, `mail_address`, `creation_date`, `created_by_user`, `state`) VALUES
(2, 'Offer TEST2', 'DESCRIPTION_TEST2', 'CITY2', 'contact-offer2@test.com', '2010-04-05', 2, 'BROUILLON');


-- INSERTION ATTACHMENT --
INSERT IGNORE INTO `attachment` (`id`, `label`) VALUES
(1, 'TESTLABEL');
INSERT IGNORE INTO `attachment` (`id`, `label`) VALUES
(2, 'TESTLABEL2');

-- INSERTION OFFERS ATTACHMENT--
INSERT IGNORE INTO `offer_attachment` (`id_offer`, `id_attachment`) VALUES
(1, 1);
INSERT IGNORE INTO `offer_attachment` (`id_offer`, `id_attachment`) VALUES
(2, 2);

-- INSERTION STUDENT WISH --
INSERT IGNORE INTO `student_wish`(`id`, `creation_date`, `priority_receiver`, `priority_sender`, `state`, `id_offer`, `id_student`) VALUES
(1, SYSDATE(), 1, 1, 'TRANSMIS', 1, 1);
INSERT IGNORE INTO `student_wish`(`id`, `creation_date`, `priority_receiver`, `priority_sender`, `state`, `id_offer`, `id_student`) VALUES
(2, SYSDATE(), 1, 2, 'TRANSMIS', 2, 1);


-- INSERTION OFFER_STUDENT_WISH --
INSERT IGNORE INTO `offer_student_wish` (`id_offer`, `id_student_wish`) VALUES
(1, 1);
INSERT IGNORE INTO `offer_student_wish` (`id_offer`, `id_student_wish`) VALUES
(2, 2);

-- INSERTION COMPANY WISH --
INSERT IGNORE INTO `company_wish` (`id`, `creation_date`, `priority_receiver`, `priority_sender`, `state`, `id_company`, `id_student`) VALUES
(1, SYSDATE(), 1, 1, 'TRANSMIS', 1, 1);


-- INSERTION COMPANY OFFER --
INSERT IGNORE INTO `company_offer` (`id_company`, `id_offer`) VALUES
(1, 1);
INSERT IGNORE INTO `company_offer` (`id_company`, `id_offer`) VALUES
(1, 2);

--
-- INSERTION DES LIAISONS ENTRE USER ET ROLE
--
INSERT IGNORE INTO `user_role` (`id_role`, `id_user`) VALUES (1, 1);
INSERT IGNORE INTO `user_role` (`id_role`, `id_user`) VALUES (2, 2);
INSERT IGNORE INTO `user_role` (`id_role`, `id_user`) VALUES (3, 3);
