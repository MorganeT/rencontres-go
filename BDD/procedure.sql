DROP TRIGGER IF EXISTS bi_Message;

DELIMITER //
create trigger bi_Message
BEFORE INSERT ON Message FOR EACH ROW
BEGIN
	SET NEW.tMess = NOW();
END //

DELIMITER ;