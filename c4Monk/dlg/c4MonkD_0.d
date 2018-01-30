
BEGIN c4MonkD

IF ~GlobalLT("c4MonkSkillPoint","Locals",1)
		Global("c4MonkDialog","Locals",1)~ THEN BEGIN noskillpoint
	SAY @101
	IF ~~ THEN DO ~SetInterrupt(TRUE) SetGlobal("c4MonkDialog","Locals",0)~ EXIT
END

IF ~GlobalGT("c4MonkSkillPoint","Locals",0)
		Global("c4MonkDialog","Locals",1)~ THEN BEGIN gotskillpoint
	SAY @102
	++ @200 DO ~SetInterrupt(FALSE)~ + bodytraining
	++ @300 DO ~SetInterrupt(FALSE)~ + mentaltraining
	++ @1000 DO ~SetInterrupt(FALSE)~ + refinefist
	++ @103 DO ~SetInterrupt(TRUE) SetGlobal("c4MonkDialog","Locals",0)~ EXIT
END

IF ~Global("c4MonkDialog","Locals",0)
		Global("c4MonkBodyTrainingHLA","Locals",1)~ THEN BEGIN c4mkbdx
	SAY @210
	IF ~~ THEN DO ~
		SetGlobal("c4MonkBodyTrainingHLA","Locals",2)
		RemoveSpellRES("c4mkbda-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbde-")
		RemoveSpellRES("c4mkbde-")
		RemoveSpellRES("c4mkbde-")
		RemoveSpellRES("c4mkbde-")
		RemoveSpellRES("c4mkbde-")
		ReallyForceSpellRES("c4mkbd00",Myself)
		AddSpecialAbility("c4mkbdx-")
		AddSpecialAbility("c4mkbdx-")
		AddSpecialAbility("c4mkbdx-")
		AddSpecialAbility("c4mkbdx-")
		AddSpecialAbility("c4mkbdx-")~ EXIT
END

IF ~~ THEN BEGIN done
	SAY @105
	IF ~~ THEN DO ~IncrementGlobal("c4MonkSkillPoint","Locals",-1) SetInterrupt(TRUE) SetGlobal("c4MonkDialog","Locals",0)~ EXIT
END

IF ~~ THEN BEGIN bodytraining
	SAY @209
	+ ~Global("c4MonkBodyTraining","Locals",5)~ + @208 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",0) LevelLT(Myself,6)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",1) LevelLT(Myself,12)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",2) LevelLT(Myself,18)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",3) LevelLT(Myself,24)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",4) LevelLT(Myself,30)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",0) !LevelLT(Myself,6)~ + @201 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",1)
		AddSpecialAbility("c4mkbda-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",1) !LevelLT(Myself,12)~ + @202 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",2)
		RemoveSpellRES("c4mkbda-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		ReallyForceSpellRES("c4mkbd00",Myself)
		AddSpecialAbility("c4mkbdb-")
		AddSpecialAbility("c4mkbdb-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",2) !LevelLT(Myself,18)~ + @203 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",3)
		RemoveSpellRES("c4mkbda-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		ReallyForceSpellRES("c4mkbd00",Myself)
		AddSpecialAbility("c4mkbdc-")
		AddSpecialAbility("c4mkbdc-")
		AddSpecialAbility("c4mkbdc-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",3) !LevelLT(Myself,24)~ + @204 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",4)
		RemoveSpellRES("c4mkbda-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		ReallyForceSpellRES("c4mkbd00",Myself)
		AddSpecialAbility("c4mkbdd-")
		AddSpecialAbility("c4mkbdd-")
		AddSpecialAbility("c4mkbdd-")
		AddSpecialAbility("c4mkbdd-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",4) !LevelLT(Myself,30)~ + @205 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",5)
		RemoveSpellRES("c4mkbda-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdb-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdc-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		RemoveSpellRES("c4mkbdd-")
		ReallyForceSpellRES("c4mkbd00",Myself)
		ReallyForceSpellRES("c4mkbdx0",Myself)
		AddSpecialAbility("c4mkbde-")
		AddSpecialAbility("c4mkbde-")
		AddSpecialAbility("c4mkbde-")
		AddSpecialAbility("c4mkbde-")
		AddSpecialAbility("c4mkbde-")~ + done
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN mentaltraining
	SAY @310
	+ ~GlobalGT("c4MonkMentalTraining4","Locals",0)~ 
	+ @302 + gotskillpoint
	+ ~GlobalGT("c4MonkMentalTraining1","Locals",1) LevelLT(Myself,8)~ + @303 + gotskillpoint
	+ ~GlobalGT("c4MonkMentalTraining2","Locals",1) LevelLT(Myself,16)~ + @303 + gotskillpoint
	+ ~GlobalGT("c4MonkMentalTraining3","Locals",1) LevelLT(Myself,24)~ + @303 + gotskillpoint
	+ ~Global("c4MonkMentalTraining1","Locals",0)~ + @311 DO ~SetGlobal("c4MonkMentalTraining1","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining2","Locals",0) GlobalGT("c4MonkMentalTraining1","Locals",0) !LevelLT(Myself,8)~ + @312 DO ~SetGlobal("c4MonkMentalTraining2","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining3","Locals",0) GlobalGT("c4MonkMentalTraining2","Locals",0) !LevelLT(Myself,16)~ + @313 DO ~SetGlobal("c4MonkMentalTraining3","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining4","Locals",0) GlobalGT("c4MonkMentalTraining3","Locals",0) !LevelLT(Myself,24)~ + @314 DO ~SetGlobal("c4MonkMentalTraining4","Locals",1)~ + done
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN refinefist
	SAY @1002
	++ @1100 + fist1
	++ @1200 + fist2
	++ @1300 + fist3
	++ @1400 + fist4
	++ @1500 + fist5
	++ @1600 + fist6
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist1
	SAY @1101
	+ ~Global("c4MonkColdFist","Locals",0)~ + @1111 DO ~SetGlobal("c4MonkColdFist","Locals",1) ReallyForceSpellRES("c4mkf1a",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",1)~ + @1121 DO ~SetGlobal("c4MonkColdFist","Locals",2) ReallyForceSpellRES("c4mkf1b",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",2)~ + @1131 DO ~SetGlobal("c4MonkColdFist","Locals",3) ReallyForceSpellRES("c4mkf1c",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",3)~ + @1141 DO ~SetGlobal("c4MonkColdFist","Locals",4) ReallyForceSpellRES("c4mkf1d",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",4)~ + @1151 DO ~SetGlobal("c4MonkColdFist","Locals",5) ReallyForceSpellRES("c4mkf1e",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",5)~ + @1102 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist2
	SAY @1201
	+ ~Global("c4MonkFireFist","Locals",0)~ + @1211 DO ~SetGlobal("c4MonkFireFist","Locals",1) ReallyForceSpellRES("c4mkf2a",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",1)~ + @1221 DO ~SetGlobal("c4MonkFireFist","Locals",2) ReallyForceSpellRES("c4mkf2b",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",2)~ + @1231 DO ~SetGlobal("c4MonkFireFist","Locals",3) ReallyForceSpellRES("c4mkf2c",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",3)~ + @1241 DO ~SetGlobal("c4MonkFireFist","Locals",4) ReallyForceSpellRES("c4mkf2d",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",4)~ + @1251 DO ~SetGlobal("c4MonkFireFist","Locals",5) ReallyForceSpellRES("c4mkf2e",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",5)~ + @1202 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist3
	SAY @1301
	+ ~Global("c4MonkElectronicFist","Locals",0)~ + @1311 DO ~SetGlobal("c4MonkElectronicFist","Locals",1) ReallyForceSpellRES("c4mkf3a",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",1)~ + @1321 DO ~SetGlobal("c4MonkElectronicFist","Locals",2) ReallyForceSpellRES("c4mkf3b",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",2)~ + @1331 DO ~SetGlobal("c4MonkElectronicFist","Locals",3) ReallyForceSpellRES("c4mkf3c",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",3)~ + @1341 DO ~SetGlobal("c4MonkElectronicFist","Locals",4) ReallyForceSpellRES("c4mkf3d",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",4)~ + @1351 DO ~SetGlobal("c4MonkElectronicFist","Locals",5) ReallyForceSpellRES("c4mkf3e",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",5)~ + @1302 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist4
	SAY @1401
	+ ~Global("c4MonkAcidFist","Locals",0)~ + @1411 DO ~SetGlobal("c4MonkAcidFist","Locals",1) ReallyForceSpellRES("c4mkf4a",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",1)~ + @1421 DO ~SetGlobal("c4MonkAcidFist","Locals",2) ReallyForceSpellRES("c4mkf4b",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",2)~ + @1431 DO ~SetGlobal("c4MonkAcidFist","Locals",3) ReallyForceSpellRES("c4mkf4c",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",3)~ + @1441 DO ~SetGlobal("c4MonkAcidFist","Locals",4) ReallyForceSpellRES("c4mkf4d",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",4)~ + @1451 DO ~SetGlobal("c4MonkAcidFist","Locals",5) ReallyForceSpellRES("c4mkf4e",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",5)~ + @1402 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist5
	SAY @1501
	+ ~Global("c4MonkPiercingFist","Locals",0)~ + @1511 DO ~SetGlobal("c4MonkPiercingFist","Locals",1) ReallyForceSpellRES("c4mkf5a",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",1)~ + @1521 DO ~SetGlobal("c4MonkPiercingFist","Locals",2) ReallyForceSpellRES("c4mkf5b",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",2)~ + @1531 DO ~SetGlobal("c4MonkPiercingFist","Locals",3) ReallyForceSpellRES("c4mkf5c",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",3)~ + @1541 DO ~SetGlobal("c4MonkPiercingFist","Locals",4) ReallyForceSpellRES("c4mkf5d",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",4)~ + @1551 DO ~SetGlobal("c4MonkPiercingFist","Locals",5) ReallyForceSpellRES("c4mkf5e",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",5)~ + @1502 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist6
	SAY @1601
	+ ~Global("c4MonkSlashingFist","Locals",0)~ + @1611 DO ~SetGlobal("c4MonkSlashingFist","Locals",1) ReallyForceSpellRES("c4mkf6a",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",1)~ + @1621 DO ~SetGlobal("c4MonkSlashingFist","Locals",2) ReallyForceSpellRES("c4mkf6b",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",2)~ + @1631 DO ~SetGlobal("c4MonkSlashingFist","Locals",3) ReallyForceSpellRES("c4mkf6c",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",3)~ + @1641 DO ~SetGlobal("c4MonkSlashingFist","Locals",4) ReallyForceSpellRES("c4mkf6d",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",4)~ + @1651 DO ~SetGlobal("c4MonkSlashingFist","Locals",5) ReallyForceSpellRES("c4mkf6e",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",5)~ + @1602 + refinefist
	++ @104 + gotskillpoint
END	
	
