-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/15/2019 13:03:54"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CMS2 IS
    PORT (
	RST : INOUT std_logic;
	CLK : IN std_logic;
	RSTN : IN std_logic;
	D : OUT std_logic_vector(7 DOWNTO 0);
	RS : OUT std_logic;
	RW : OUT std_logic;
	EN : OUT std_logic;
	inp1 : IN std_logic;
	inp2 : IN std_logic;
	Y1 : OUT std_logic_vector(6 DOWNTO 0);
	Y2 : OUT std_logic_vector(6 DOWNTO 0);
	m : BUFFER std_logic_vector(3 DOWNTO 0);
	n : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END CMS2;

-- Design Ports Information
-- RST	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[0]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[3]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[4]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[5]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- D[7]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RW	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EN	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[0]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[1]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[3]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[4]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[5]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y1[6]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[0]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[1]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[2]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[4]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[5]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y2[6]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[0]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[1]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[3]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- n[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- n[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- n[2]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- n[3]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- inp1	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inp2	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RSTN	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CMS2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RSTN : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_inp1 : std_logic;
SIGNAL ww_inp2 : std_logic;
SIGNAL ww_Y1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Y2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector16~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \CLK1~regout\ : std_logic;
SIGNAL \A1[1]~3_combout\ : std_logic;
SIGNAL \kpcounter1~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \CLK1~0_combout\ : std_logic;
SIGNAL \CNT0~0_combout\ : std_logic;
SIGNAL \CNT0~1_combout\ : std_logic;
SIGNAL \CNT0~2_combout\ : std_logic;
SIGNAL \CNT0~3_combout\ : std_logic;
SIGNAL \CNT0~4_combout\ : std_logic;
SIGNAL \CNT0~5_combout\ : std_logic;
SIGNAL \CNT0~6_combout\ : std_logic;
SIGNAL \n~12_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK1~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \RST~0\ : std_logic;
SIGNAL \CNT_DATA[0]~1_combout\ : std_logic;
SIGNAL \RSTN~combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Q.S4~regout\ : std_logic;
SIGNAL \Q.S5~regout\ : std_logic;
SIGNAL \CNT_CMD[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \QPLUS.S1~0_combout\ : std_logic;
SIGNAL \Q.S1~regout\ : std_logic;
SIGNAL \Q.S2~regout\ : std_logic;
SIGNAL \QPLUS.S0~combout\ : std_logic;
SIGNAL \Q.S0~0_combout\ : std_logic;
SIGNAL \Q.S0~regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Q.S3~regout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \CNT_DATA[1]~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Q.S6~regout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~2clkctrl_outclk\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \A2[1]~2_combout\ : std_logic;
SIGNAL \A2[0]~0_combout\ : std_logic;
SIGNAL \A2[0]~1_combout\ : std_logic;
SIGNAL \A1[0]~0_combout\ : std_logic;
SIGNAL \A2[2]~3_combout\ : std_logic;
SIGNAL \A2[3]~4_combout\ : std_logic;
SIGNAL \A1[0]~1_combout\ : std_logic;
SIGNAL \A1[0]~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \D[0]$latch~combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \D[1]$latch~combout\ : std_logic;
SIGNAL \A1[2]~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \D[2]$latch~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \D[3]$latch~combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \D[4]$latch~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \D[7]$latch~combout\ : std_logic;
SIGNAL \RS$latch~combout\ : std_logic;
SIGNAL \EN~0_combout\ : std_logic;
SIGNAL \EN$latch~combout\ : std_logic;
SIGNAL \inp1~combout\ : std_logic;
SIGNAL \input_delay~feeder_combout\ : std_logic;
SIGNAL \input_delay~regout\ : std_logic;
SIGNAL \kpcounter1~0_combout\ : std_logic;
SIGNAL \m~8_combout\ : std_logic;
SIGNAL \m~4_combout\ : std_logic;
SIGNAL \m[1]~reg0_regout\ : std_logic;
SIGNAL \m~5_combout\ : std_logic;
SIGNAL \m~6_combout\ : std_logic;
SIGNAL \m[2]~reg0_regout\ : std_logic;
SIGNAL \m~7_combout\ : std_logic;
SIGNAL \m[0]~reg0_regout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \m[2]~3_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \m~9_combout\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \m[3]~reg0_regout\ : std_logic;
SIGNAL \U0|Y[0]~0_combout\ : std_logic;
SIGNAL \U0|Y[1]~1_combout\ : std_logic;
SIGNAL \U0|Y[2]~2_combout\ : std_logic;
SIGNAL \U0|Y[3]~3_combout\ : std_logic;
SIGNAL \U0|Y[6]~4_combout\ : std_logic;
SIGNAL \inp2~combout\ : std_logic;
SIGNAL \kpcounter2~0_combout\ : std_logic;
SIGNAL \input_delay2~regout\ : std_logic;
SIGNAL \n~2_combout\ : std_logic;
SIGNAL \n~8_combout\ : std_logic;
SIGNAL \n~11_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \n~3_combout\ : std_logic;
SIGNAL \n[3]~reg0_regout\ : std_logic;
SIGNAL \n~10_combout\ : std_logic;
SIGNAL \n[0]~reg0_regout\ : std_logic;
SIGNAL \n[1]~4_combout\ : std_logic;
SIGNAL \n[1]~5_combout\ : std_logic;
SIGNAL \n[1]~6_combout\ : std_logic;
SIGNAL \n~7_combout\ : std_logic;
SIGNAL \n[1]~reg0_regout\ : std_logic;
SIGNAL \n~9_combout\ : std_logic;
SIGNAL \n[2]~reg0_regout\ : std_logic;
SIGNAL \U1|Y[0]~0_combout\ : std_logic;
SIGNAL \U1|Y[1]~1_combout\ : std_logic;
SIGNAL \U1|Y[2]~2_combout\ : std_logic;
SIGNAL \U1|Y[3]~3_combout\ : std_logic;
SIGNAL \U1|Y[6]~4_combout\ : std_logic;
SIGNAL kpcounter2 : std_logic_vector(3 DOWNTO 0);
SIGNAL kpcounter1 : std_logic_vector(3 DOWNTO 0);
SIGNAL CNT_DATA : std_logic_vector(1 DOWNTO 0);
SIGNAL CNT_CMD : std_logic_vector(2 DOWNTO 0);
SIGNAL CNT0 : std_logic_vector(22 DOWNTO 0);
SIGNAL A2 : std_logic_vector(3 DOWNTO 0);
SIGNAL A1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|Y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|Y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_RSTN~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RSTN <= RSTN;
D <= ww_D;
RS <= ww_RS;
RW <= ww_RW;
EN <= ww_EN;
ww_inp1 <= inp1;
ww_inp2 <= inp2;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
m <= ww_m;
n <= ww_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Selector16~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector16~2_combout\);

\CLK1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK1~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_RSTN~combout\ <= NOT \RSTN~combout\;

-- Location: LCCOMB_X9_Y11_N10
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CNT0(0) $ (VCC)
-- \Add0~1\ = CARRY(CNT0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X9_Y11_N12
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (CNT0(1) & (!\Add0~1\)) # (!CNT0(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!CNT0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X9_Y11_N14
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (CNT0(2) & (\Add0~3\ $ (GND))) # (!CNT0(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((CNT0(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X9_Y11_N16
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (CNT0(3) & (!\Add0~5\)) # (!CNT0(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!CNT0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y11_N18
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CNT0(4) & (\Add0~7\ $ (GND))) # (!CNT0(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((CNT0(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y11_N20
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (CNT0(5) & (!\Add0~9\)) # (!CNT0(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!CNT0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y11_N22
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (CNT0(6) & (\Add0~11\ $ (GND))) # (!CNT0(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((CNT0(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X9_Y11_N24
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (CNT0(7) & (!\Add0~13\)) # (!CNT0(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!CNT0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X9_Y11_N26
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CNT0(8) & (\Add0~15\ $ (GND))) # (!CNT0(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CNT0(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X9_Y11_N28
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (CNT0(9) & (!\Add0~17\)) # (!CNT0(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!CNT0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X9_Y11_N30
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (CNT0(10) & (\Add0~19\ $ (GND))) # (!CNT0(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((CNT0(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X9_Y10_N0
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (CNT0(11) & (!\Add0~21\)) # (!CNT0(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!CNT0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X9_Y10_N2
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (CNT0(12) & (\Add0~23\ $ (GND))) # (!CNT0(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((CNT0(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X9_Y10_N4
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (CNT0(13) & (!\Add0~25\)) # (!CNT0(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!CNT0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X9_Y10_N6
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (CNT0(14) & (\Add0~27\ $ (GND))) # (!CNT0(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((CNT0(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X9_Y10_N8
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (CNT0(15) & (!\Add0~29\)) # (!CNT0(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!CNT0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X9_Y10_N10
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (CNT0(16) & (\Add0~31\ $ (GND))) # (!CNT0(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((CNT0(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X9_Y10_N12
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (CNT0(17) & (!\Add0~33\)) # (!CNT0(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!CNT0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X9_Y10_N14
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (CNT0(18) & (\Add0~35\ $ (GND))) # (!CNT0(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((CNT0(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X9_Y10_N16
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (CNT0(19) & (!\Add0~37\)) # (!CNT0(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!CNT0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X9_Y10_N18
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (CNT0(20) & (\Add0~39\ $ (GND))) # (!CNT0(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((CNT0(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT0(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X9_Y10_N20
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (CNT0(21) & (!\Add0~41\)) # (!CNT0(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!CNT0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X9_Y10_N22
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \Add0~43\ $ (!CNT0(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CNT0(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X8_Y2_N8
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (CNT_CMD(0) & (((\Q.S1~regout\) # (\Q.S2~regout\)) # (!\Q.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S0~regout\,
	datab => CNT_CMD(0),
	datac => \Q.S1~regout\,
	datad => \Q.S2~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X9_Y2_N21
\A1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A1[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A1(1));

-- Location: LCCOMB_X9_Y2_N16
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (CNT_DATA(0) & (((A1(1))))) # (!CNT_DATA(0) & (CNT_DATA(1) & ((A2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_DATA(0),
	datab => CNT_DATA(1),
	datac => A1(1),
	datad => A2(1),
	combout => \Mux9~0_combout\);

-- Location: LCFF_X25_Y5_N17
\kpcounter1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \kpcounter1~1_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter1(0));

-- Location: LCFF_X8_Y10_N9
CLK1 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CLK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CLK1~regout\);

-- Location: LCFF_X24_Y5_N17
\kpcounter2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~12_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter2(3));

-- Location: LCCOMB_X9_Y2_N20
\A1[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A1[1]~3_combout\ = A1(1) $ (((A1(0) & \A1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A1(0),
	datac => A1(1),
	datad => \A1[0]~1_combout\,
	combout => \A1[1]~3_combout\);

-- Location: LCCOMB_X25_Y5_N16
\kpcounter1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \kpcounter1~1_combout\ = (!\input_delay~regout\ & (!\RST~0\ & (!kpcounter1(0) & \inp1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_delay~regout\,
	datab => \RST~0\,
	datac => kpcounter1(0),
	datad => \inp1~combout\,
	combout => \kpcounter1~1_combout\);

-- Location: LCFF_X9_Y11_N11
\CNT0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(0));

-- Location: LCFF_X9_Y11_N13
\CNT0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(1));

-- Location: LCFF_X9_Y11_N15
\CNT0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(2));

-- Location: LCFF_X9_Y11_N17
\CNT0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(3));

-- Location: LCCOMB_X9_Y11_N8
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (CNT0(0) & (CNT0(2) & (CNT0(3) & CNT0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(0),
	datab => CNT0(2),
	datac => CNT0(3),
	datad => CNT0(1),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X9_Y11_N19
\CNT0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(4));

-- Location: LCFF_X8_Y10_N11
\CNT0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(5));

-- Location: LCFF_X9_Y11_N23
\CNT0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(6));

-- Location: LCFF_X9_Y11_N25
\CNT0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(7));

-- Location: LCCOMB_X8_Y10_N6
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!CNT0(5) & (!CNT0(6) & (CNT0(4) & !CNT0(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(5),
	datab => CNT0(6),
	datac => CNT0(4),
	datad => CNT0(7),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X8_Y10_N3
\CNT0[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(8));

-- Location: LCFF_X9_Y11_N29
\CNT0[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(9));

-- Location: LCFF_X9_Y11_N31
\CNT0[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(10));

-- Location: LCFF_X9_Y10_N1
\CNT0[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(11));

-- Location: LCCOMB_X8_Y10_N20
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!CNT0(11) & (CNT0(8) & (!CNT0(10) & !CNT0(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(11),
	datab => CNT0(8),
	datac => CNT0(10),
	datad => CNT0(9),
	combout => \Equal0~2_combout\);

-- Location: LCFF_X8_Y10_N31
\CNT0[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(13));

-- Location: LCFF_X9_Y10_N25
\CNT0[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(15));

-- Location: LCFF_X9_Y10_N3
\CNT0[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(12));

-- Location: LCFF_X9_Y10_N7
\CNT0[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(14));

-- Location: LCCOMB_X8_Y10_N26
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!CNT0(14) & (CNT0(15) & (!CNT0(12) & CNT0(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(14),
	datab => CNT0(15),
	datac => CNT0(12),
	datad => CNT0(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X8_Y10_N22
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCFF_X9_Y10_N31
\CNT0[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(16));

-- Location: LCFF_X9_Y10_N29
\CNT0[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(17));

-- Location: LCFF_X9_Y10_N27
\CNT0[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \CNT0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(18));

-- Location: LCFF_X9_Y10_N17
\CNT0[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(19));

-- Location: LCCOMB_X8_Y10_N12
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!CNT0(19) & (CNT0(17) & (CNT0(18) & CNT0(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT0(19),
	datab => CNT0(17),
	datac => CNT0(18),
	datad => CNT0(16),
	combout => \Equal0~5_combout\);

-- Location: LCFF_X9_Y10_N19
\CNT0[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(20));

-- Location: LCFF_X9_Y10_N21
\CNT0[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(21));

-- Location: LCFF_X9_Y10_N23
\CNT0[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT0(22));

-- Location: LCCOMB_X8_Y10_N14
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (!CNT0(21) & (!CNT0(20) & !CNT0(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => CNT0(21),
	datac => CNT0(20),
	datad => CNT0(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X8_Y10_N8
\CLK1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CLK1~0_combout\ = \CLK1~regout\ $ (((\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datac => \CLK1~regout\,
	datad => \Equal0~4_combout\,
	combout => \CLK1~0_combout\);

-- Location: LCCOMB_X8_Y10_N10
\CNT0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~0_combout\ = (\Add0~10_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~10_combout\,
	combout => \CNT0~0_combout\);

-- Location: LCCOMB_X8_Y10_N2
\CNT0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~1_combout\ = (\Add0~16_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~16_combout\,
	combout => \CNT0~1_combout\);

-- Location: LCCOMB_X8_Y10_N30
\CNT0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~2_combout\ = (\Add0~26_combout\ & ((!\Equal0~6_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~6_combout\,
	datad => \Add0~26_combout\,
	combout => \CNT0~2_combout\);

-- Location: LCCOMB_X9_Y10_N24
\CNT0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~3_combout\ = (\Add0~30_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Add0~30_combout\,
	datad => \Equal0~4_combout\,
	combout => \CNT0~3_combout\);

-- Location: LCCOMB_X9_Y10_N30
\CNT0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~4_combout\ = (\Add0~32_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datad => \Add0~32_combout\,
	combout => \CNT0~4_combout\);

-- Location: LCCOMB_X9_Y10_N28
\CNT0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~5_combout\ = (\Add0~34_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datad => \Add0~34_combout\,
	combout => \CNT0~5_combout\);

-- Location: LCCOMB_X9_Y10_N26
\CNT0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT0~6_combout\ = (\Add0~36_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \CNT0~6_combout\);

-- Location: LCCOMB_X24_Y5_N16
\n~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~12_combout\ = (!\input_delay2~regout\ & (\Add6~0_combout\ & (\inp2~combout\ & !\RST~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_delay2~regout\,
	datab => \Add6~0_combout\,
	datac => \inp2~combout\,
	datad => \RST~0\,
	combout => \n~12_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G1
\CLK1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RST~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => RST,
	combout => \RST~0\);

-- Location: LCCOMB_X8_Y2_N12
\CNT_DATA[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_DATA[0]~1_combout\ = (!\Q.S6~regout\ & (\Q.S5~regout\ $ (CNT_DATA(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q.S5~regout\,
	datac => CNT_DATA(0),
	datad => \Q.S6~regout\,
	combout => \CNT_DATA[0]~1_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RSTN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RSTN,
	combout => \RSTN~combout\);

-- Location: LCFF_X8_Y2_N13
\CNT_DATA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \CNT_DATA[0]~1_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT_DATA(0));

-- Location: LCCOMB_X7_Y2_N0
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Q.S3~regout\ & ((!CNT_DATA(0)) # (!CNT_DATA(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_DATA(1),
	datab => CNT_DATA(0),
	datac => \Q.S3~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X8_Y2_N31
\Q.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	sdata => \Selector12~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S4~regout\);

-- Location: LCFF_X8_Y2_N23
\Q.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	sdata => \Q.S4~regout\,
	aclr => \ALT_INV_RSTN~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S5~regout\);

-- Location: LCCOMB_X7_Y2_N20
\CNT_CMD[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_CMD[0]~0_combout\ = (!\Q.S6~regout\ & (CNT_CMD(0) $ (\Q.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S6~regout\,
	datab => CNT_CMD(0),
	datad => \Q.S2~regout\,
	combout => \CNT_CMD[0]~0_combout\);

-- Location: LCFF_X8_Y2_N5
\CNT_CMD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	sdata => \CNT_CMD[0]~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT_CMD(0));

-- Location: LCCOMB_X9_Y2_N30
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = CNT_CMD(0) $ (CNT_CMD(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT_CMD(0),
	datac => CNT_CMD(1),
	combout => \Add1~0_combout\);

-- Location: LCFF_X9_Y2_N31
\CNT_CMD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \Add1~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	sclr => \Q.S6~regout\,
	ena => \QPLUS.S0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT_CMD(1));

-- Location: LCCOMB_X9_Y2_N14
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = CNT_CMD(2) $ (((CNT_CMD(0) & CNT_CMD(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT_CMD(0),
	datac => CNT_CMD(2),
	datad => CNT_CMD(1),
	combout => \Add1~1_combout\);

-- Location: LCFF_X9_Y2_N15
\CNT_CMD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \Add1~1_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	sclr => \Q.S6~regout\,
	ena => \QPLUS.S0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT_CMD(2));

-- Location: LCCOMB_X7_Y2_N14
\QPLUS.S1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \QPLUS.S1~0_combout\ = (!\Q.S0~regout\ & (((!CNT_CMD(1) & !CNT_CMD(0))) # (!CNT_CMD(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_CMD(1),
	datab => \Q.S0~regout\,
	datac => CNT_CMD(0),
	datad => CNT_CMD(2),
	combout => \QPLUS.S1~0_combout\);

-- Location: LCFF_X8_Y2_N9
\Q.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	sdata => \QPLUS.S1~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S1~regout\);

-- Location: LCFF_X8_Y2_N1
\Q.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	sdata => \Q.S1~regout\,
	aclr => \ALT_INV_RSTN~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S2~regout\);

-- Location: LCCOMB_X8_Y2_N30
\QPLUS.S0\ : cycloneii_lcell_comb
-- Equation(s):
-- \QPLUS.S0~combout\ = (\Q.S6~regout\) # (\Q.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q.S6~regout\,
	datad => \Q.S2~regout\,
	combout => \QPLUS.S0~combout\);

-- Location: LCCOMB_X8_Y2_N14
\Q.S0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q.S0~0_combout\ = !\QPLUS.S0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \QPLUS.S0~combout\,
	combout => \Q.S0~0_combout\);

-- Location: LCFF_X8_Y2_N15
\Q.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \Q.S0~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S0~regout\);

-- Location: LCCOMB_X8_Y2_N6
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Q.S0~regout\) # (((!CNT_CMD(0) & !CNT_CMD(1))) # (!CNT_CMD(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_CMD(0),
	datab => \Q.S0~regout\,
	datac => CNT_CMD(2),
	datad => CNT_CMD(1),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X8_Y2_N2
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Q.S5~regout\) # (!\Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q.S5~regout\,
	datad => \Selector16~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X8_Y2_N3
\Q.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \Selector0~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S3~regout\);

-- Location: LCCOMB_X7_Y2_N12
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = CNT_DATA(0) $ (CNT_DATA(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT_DATA(0),
	datac => CNT_DATA(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X7_Y2_N30
\CNT_DATA[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_DATA[1]~0_combout\ = (\Q.S6~regout\) # (\Q.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q.S6~regout\,
	datad => \Q.S5~regout\,
	combout => \CNT_DATA[1]~0_combout\);

-- Location: LCFF_X7_Y2_N13
\CNT_DATA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \Add2~0_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	sclr => \Q.S6~regout\,
	ena => \CNT_DATA[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT_DATA(1));

-- Location: LCCOMB_X8_Y2_N16
\Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (CNT_DATA(0) & (\Q.S3~regout\ & CNT_DATA(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_DATA(0),
	datab => \Q.S3~regout\,
	datad => CNT_DATA(1),
	combout => \Selector16~1_combout\);

-- Location: LCFF_X8_Y2_N17
\Q.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~regout\,
	datain => \Selector16~1_combout\,
	aclr => \ALT_INV_RSTN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q.S6~regout\);

-- Location: LCCOMB_X8_Y2_N18
\Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (!\Q.S6~regout\ & (!\Selector16~1_combout\ & \Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q.S6~regout\,
	datac => \Selector16~1_combout\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~2_combout\);

-- Location: CLKCTRL_G0
\Selector16~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector16~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector16~2clkctrl_outclk\);

-- Location: LCCOMB_X8_Y2_N0
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Q.S3~regout\) # ((\Q.S5~regout\) # (\Q.S4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S3~regout\,
	datab => \Q.S5~regout\,
	datad => \Q.S4~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X9_Y2_N10
\A2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2[1]~2_combout\ = A2(1) $ (((!A2(3) & \A1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A2(3),
	datac => A2(1),
	datad => \A1[0]~0_combout\,
	combout => \A2[1]~2_combout\);

-- Location: LCFF_X9_Y2_N11
\A2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A2(1));

-- Location: LCCOMB_X7_Y2_N28
\A2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2[0]~0_combout\ = (A2(3) & ((A2(2)) # (A2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A2(2),
	datac => A2(3),
	datad => A2(1),
	combout => \A2[0]~0_combout\);

-- Location: LCCOMB_X7_Y2_N18
\A2[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2[0]~1_combout\ = A2(0) $ (((\Q.S6~regout\ & (\RSTN~combout\ & !\A2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S6~regout\,
	datab => \RSTN~combout\,
	datac => A2(0),
	datad => \A2[0]~0_combout\,
	combout => \A2[0]~1_combout\);

-- Location: LCFF_X7_Y2_N19
\A2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A2(0));

-- Location: LCCOMB_X7_Y2_N2
\A1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A1[0]~0_combout\ = (\RSTN~combout\ & (\Q.S6~regout\ & A2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RSTN~combout\,
	datac => \Q.S6~regout\,
	datad => A2(0),
	combout => \A1[0]~0_combout\);

-- Location: LCCOMB_X10_Y2_N24
\A2[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2[2]~3_combout\ = A2(2) $ (((A2(1) & (!A2(3) & \A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A2(1),
	datab => A2(3),
	datac => A2(2),
	datad => \A1[0]~0_combout\,
	combout => \A2[2]~3_combout\);

-- Location: LCFF_X10_Y2_N25
\A2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A2(2));

-- Location: LCCOMB_X7_Y2_N24
\A2[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \A2[3]~4_combout\ = (A2(1) & ((A2(3)) # ((A2(2) & \A1[0]~0_combout\)))) # (!A2(1) & (A2(3) & ((A2(2)) # (!\A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A2(1),
	datab => A2(2),
	datac => A2(3),
	datad => \A1[0]~0_combout\,
	combout => \A2[3]~4_combout\);

-- Location: LCFF_X7_Y2_N25
\A2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A2[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A2(3));

-- Location: LCCOMB_X8_Y2_N28
\A1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \A1[0]~1_combout\ = (!A2(1) & (A2(3) & (!A2(2) & \A1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A2(1),
	datab => A2(3),
	datac => A2(2),
	datad => \A1[0]~0_combout\,
	combout => \A1[0]~1_combout\);

-- Location: LCCOMB_X9_Y2_N28
\A1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \A1[0]~2_combout\ = A1(0) $ (\A1[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A1(0),
	datad => \A1[0]~1_combout\,
	combout => \A1[0]~2_combout\);

-- Location: LCFF_X9_Y2_N29
\A1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A1(0));

-- Location: LCCOMB_X9_Y2_N22
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (CNT_DATA(0) & (A1(0))) # (!CNT_DATA(0) & (((CNT_DATA(1) & A2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_DATA(0),
	datab => A1(0),
	datac => CNT_DATA(1),
	datad => A2(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X9_Y2_N18
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\ & (((\Selector5~0_combout\ & \Mux10~0_combout\)) # (!CNT_CMD(1)))) # (!\Selector7~0_combout\ & (((\Selector5~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => CNT_CMD(1),
	datac => \Selector5~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X9_Y2_N26
\D[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[0]$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\Selector7~1_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\D[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]$latch~combout\,
	datac => \Selector16~2clkctrl_outclk\,
	datad => \Selector7~1_combout\,
	combout => \D[0]$latch~combout\);

-- Location: LCCOMB_X8_Y2_N4
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ((\Q.S1~regout\) # (\Q.S2~regout\)) # (!\Q.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S0~regout\,
	datab => \Q.S1~regout\,
	datad => \Q.S2~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X9_Y2_N12
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Mux9~0_combout\ & ((\Selector5~0_combout\) # ((CNT_CMD(2) & \Selector11~0_combout\)))) # (!\Mux9~0_combout\ & (CNT_CMD(2) & ((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => CNT_CMD(2),
	datac => \Selector5~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X9_Y2_N0
\D[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[1]$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\D[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]$latch~combout\,
	datac => \Selector16~2clkctrl_outclk\,
	datad => \Selector8~0_combout\,
	combout => \D[1]$latch~combout\);

-- Location: LCCOMB_X9_Y2_N24
\A1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \A1[2]~4_combout\ = A1(2) $ (((A1(1) & (A1(0) & \A1[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A1(1),
	datab => A1(0),
	datac => A1(2),
	datad => \A1[0]~1_combout\,
	combout => \A1[2]~4_combout\);

-- Location: LCFF_X9_Y2_N25
\A1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \A1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A1(2));

-- Location: LCCOMB_X9_Y2_N4
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (CNT_DATA(0) & (((A1(2))))) # (!CNT_DATA(0) & (CNT_DATA(1) & ((A2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_DATA(0),
	datab => CNT_DATA(1),
	datac => A1(2),
	datad => A2(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X9_Y2_N6
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = CNT_CMD(2) $ (CNT_CMD(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CNT_CMD(2),
	datad => CNT_CMD(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X9_Y2_N8
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\ & ((\Mux3~0_combout\) # ((\Mux8~0_combout\ & \Selector5~0_combout\)))) # (!\Selector10~0_combout\ & (\Mux8~0_combout\ & (\Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \Mux8~0_combout\,
	datac => \Selector5~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X9_Y2_N2
\D[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\Selector10~1_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\D[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]$latch~combout\,
	datac => \Selector10~1_combout\,
	datad => \Selector16~2clkctrl_outclk\,
	combout => \D[2]$latch~combout\);

-- Location: LCCOMB_X8_Y2_N10
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!CNT_CMD(0) & (((\Q.S1~regout\) # (\Q.S2~regout\)) # (!\Q.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q.S0~regout\,
	datab => CNT_CMD(0),
	datac => \Q.S1~regout\,
	datad => \Q.S2~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X8_Y2_N24
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!CNT_CMD(2) & \Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CNT_CMD(2),
	datad => \Selector10~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X7_Y2_N6
\Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Selector11~1_combout\) # ((A2(3) & (CNT_DATA(1) & \Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A2(3),
	datab => CNT_DATA(1),
	datac => \Selector5~0_combout\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X7_Y2_N26
\D[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[3]$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\Selector11~2_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\D[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]$latch~combout\,
	datac => \Selector16~2clkctrl_outclk\,
	datad => \Selector11~2_combout\,
	combout => \D[3]$latch~combout\);

-- Location: LCCOMB_X8_Y2_N22
\Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (CNT_DATA(0) & (!CNT_DATA(1) & ((\Q.S5~regout\) # (\Q.S4~regout\)))) # (!CNT_DATA(0) & (((\Q.S5~regout\) # (\Q.S4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_DATA(0),
	datab => CNT_DATA(1),
	datac => \Q.S5~regout\,
	datad => \Q.S4~regout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X8_Y2_N26
\Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Selector12~0_combout\) # ((\Selector12~1_combout\) # ((!CNT_CMD(1) & \Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => CNT_CMD(1),
	datac => \Selector11~1_combout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X8_Y2_N20
\D[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[4]$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\Selector12~2_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\D[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]$latch~combout\,
	datac => \Selector16~2clkctrl_outclk\,
	datad => \Selector12~2_combout\,
	combout => \D[4]$latch~combout\);

-- Location: LCCOMB_X7_Y2_N16
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (CNT_CMD(1) & (CNT_CMD(0) & \Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_CMD(1),
	datac => CNT_CMD(0),
	datad => \Selector11~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X7_Y2_N4
\D[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[7]$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\Selector15~0_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\D[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[7]$latch~combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector16~2clkctrl_outclk\,
	combout => \D[7]$latch~combout\);

-- Location: LCCOMB_X7_Y2_N10
\RS$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \RS$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & (\Selector5~0_combout\)) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & ((\RS$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \RS$latch~combout\,
	datad => \Selector16~2clkctrl_outclk\,
	combout => \RS$latch~combout\);

-- Location: LCCOMB_X7_Y2_N8
\EN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EN~0_combout\ = (\Q.S4~regout\) # (\Q.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q.S4~regout\,
	datad => \Q.S1~regout\,
	combout => \EN~0_combout\);

-- Location: LCCOMB_X7_Y2_N22
\EN$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \EN$latch~combout\ = (GLOBAL(\Selector16~2clkctrl_outclk\) & ((\EN~0_combout\))) # (!GLOBAL(\Selector16~2clkctrl_outclk\) & (\EN$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN$latch~combout\,
	datac => \EN~0_combout\,
	datad => \Selector16~2clkctrl_outclk\,
	combout => \EN$latch~combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inp1,
	combout => \inp1~combout\);

-- Location: LCCOMB_X25_Y5_N24
\input_delay~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \input_delay~feeder_combout\ = \inp1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp1~combout\,
	combout => \input_delay~feeder_combout\);

-- Location: LCFF_X25_Y5_N25
input_delay : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \input_delay~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_delay~regout\);

-- Location: LCCOMB_X25_Y5_N10
\kpcounter1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \kpcounter1~0_combout\ = (!\RST~0\ & (!\input_delay~regout\ & \inp1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~0\,
	datac => \input_delay~regout\,
	datad => \inp1~combout\,
	combout => \kpcounter1~0_combout\);

-- Location: LCCOMB_X25_Y5_N18
\m~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~8_combout\ = (\kpcounter1~0_combout\ & (kpcounter1(0) $ (kpcounter1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter1(0),
	datac => kpcounter1(1),
	datad => \kpcounter1~0_combout\,
	combout => \m~8_combout\);

-- Location: LCCOMB_X25_Y5_N22
\m~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~4_combout\ = (kpcounter1(1) & ((\RST~0\) # ((!kpcounter1(0) & \kpcounter1~0_combout\)))) # (!kpcounter1(1) & (kpcounter1(0) & ((\kpcounter1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter1(0),
	datab => kpcounter1(1),
	datac => \RST~0\,
	datad => \kpcounter1~0_combout\,
	combout => \m~4_combout\);

-- Location: LCFF_X25_Y5_N23
\m[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~4_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m[1]~reg0_regout\);

-- Location: LCFF_X25_Y5_N27
\kpcounter1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~5_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter1(2));

-- Location: LCCOMB_X25_Y5_N26
\m~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~5_combout\ = (\kpcounter1~0_combout\ & (kpcounter1(2) $ (((kpcounter1(0) & kpcounter1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter1(0),
	datab => kpcounter1(1),
	datac => kpcounter1(2),
	datad => \kpcounter1~0_combout\,
	combout => \m~5_combout\);

-- Location: LCCOMB_X25_Y5_N8
\m~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~6_combout\ = (\m~5_combout\) # ((kpcounter1(2) & \RST~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter1(2),
	datac => \RST~0\,
	datad => \m~5_combout\,
	combout => \m~6_combout\);

-- Location: LCFF_X25_Y5_N9
\m[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~6_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m[2]~reg0_regout\);

-- Location: LCCOMB_X25_Y5_N14
\m~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~7_combout\ = (kpcounter1(0) & (\RST~0\)) # (!kpcounter1(0) & (!\RST~0\ & (!\input_delay~regout\ & \inp1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter1(0),
	datab => \RST~0\,
	datac => \input_delay~regout\,
	datad => \inp1~combout\,
	combout => \m~7_combout\);

-- Location: LCFF_X25_Y5_N15
\m[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~7_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m[0]~reg0_regout\);

-- Location: LCCOMB_X25_Y5_N30
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ((\m[1]~reg0_regout\) # ((\m[2]~reg0_regout\) # (\m[0]~reg0_regout\))) # (!\m[3]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~reg0_regout\,
	datab => \m[1]~reg0_regout\,
	datac => \m[2]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X25_Y5_N20
\m[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m[2]~3_combout\ = (\RST~0\) # (((\inp1~combout\ & !\input_delay~regout\)) # (!\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp1~combout\,
	datab => \RST~0\,
	datac => \input_delay~regout\,
	datad => \Equal3~0_combout\,
	combout => \m[2]~3_combout\);

-- Location: LCFF_X25_Y5_N19
\kpcounter1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~8_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter1(1));

-- Location: LCCOMB_X25_Y5_N28
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = kpcounter1(3) $ (((kpcounter1(0) & (kpcounter1(1) & kpcounter1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter1(0),
	datab => kpcounter1(1),
	datac => kpcounter1(2),
	datad => kpcounter1(3),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X25_Y5_N0
\m~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~9_combout\ = (!\input_delay~regout\ & (\Add5~0_combout\ & (!\RST~0\ & \inp1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_delay~regout\,
	datab => \Add5~0_combout\,
	datac => \RST~0\,
	datad => \inp1~combout\,
	combout => \m~9_combout\);

-- Location: LCFF_X25_Y5_N1
\kpcounter1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~9_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter1(3));

-- Location: LCCOMB_X25_Y5_N12
\m~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\kpcounter1~0_combout\ & ((\Add5~0_combout\) # ((kpcounter1(3) & \RST~0\)))) # (!\kpcounter1~0_combout\ & (kpcounter1(3) & (\RST~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kpcounter1~0_combout\,
	datab => kpcounter1(3),
	datac => \RST~0\,
	datad => \Add5~0_combout\,
	combout => \m~2_combout\);

-- Location: LCFF_X25_Y5_N13
\m[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \m~2_combout\,
	ena => \m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N8
\U0|Y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y[0]~0_combout\ = (\m[3]~reg0_regout\) # ((\m[2]~reg0_regout\ & ((!\m[0]~reg0_regout\) # (!\m[1]~reg0_regout\))) # (!\m[2]~reg0_regout\ & (\m[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~reg0_regout\,
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y[0]~0_combout\);

-- Location: LCCOMB_X26_Y10_N10
\U0|Y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y[1]~1_combout\ = (\m[3]~reg0_regout\) # ((\m[2]~reg0_regout\ & ((!\m[0]~reg0_regout\) # (!\m[1]~reg0_regout\))) # (!\m[2]~reg0_regout\ & (!\m[1]~reg0_regout\ & !\m[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~reg0_regout\,
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y[1]~1_combout\);

-- Location: LCCOMB_X26_Y10_N20
\U0|Y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y[2]~2_combout\ = (!\m[0]~reg0_regout\ & ((\m[1]~reg0_regout\) # (!\m[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y[2]~2_combout\);

-- Location: LCCOMB_X26_Y10_N2
\U0|Y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y[3]~3_combout\ = (\m[3]~reg0_regout\) # ((\m[2]~reg0_regout\ & (\m[1]~reg0_regout\ $ (\m[0]~reg0_regout\))) # (!\m[2]~reg0_regout\ & ((\m[1]~reg0_regout\) # (!\m[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~reg0_regout\,
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y[3]~3_combout\);

-- Location: LCCOMB_X26_Y10_N12
\U0|Y[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y\(4) = (\m[2]~reg0_regout\) # ((\m[0]~reg0_regout\) # (!\m[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y\(4));

-- Location: LCCOMB_X26_Y10_N22
\U0|Y[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y\(5) = (\m[1]~reg0_regout\ $ (!\m[0]~reg0_regout\)) # (!\m[2]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y\(5));

-- Location: LCCOMB_X26_Y10_N0
\U0|Y[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Y[6]~4_combout\ = (\m[3]~reg0_regout\) # ((\m[1]~reg0_regout\) # (\m[2]~reg0_regout\ $ (!\m[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~reg0_regout\,
	datab => \m[2]~reg0_regout\,
	datac => \m[1]~reg0_regout\,
	datad => \m[0]~reg0_regout\,
	combout => \U0|Y[6]~4_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inp2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inp2,
	combout => \inp2~combout\);

-- Location: LCCOMB_X24_Y5_N28
\kpcounter2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \kpcounter2~0_combout\ = (!\input_delay2~regout\ & (\inp2~combout\ & (!kpcounter2(0) & !\RST~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_delay2~regout\,
	datab => \inp2~combout\,
	datac => kpcounter2(0),
	datad => \RST~0\,
	combout => \kpcounter2~0_combout\);

-- Location: LCFF_X24_Y5_N25
input_delay2 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	sdata => \inp2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \input_delay2~regout\);

-- Location: LCCOMB_X24_Y5_N22
\n~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~2_combout\ = (\inp2~combout\ & (!\input_delay2~regout\ & !\RST~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inp2~combout\,
	datac => \input_delay2~regout\,
	datad => \RST~0\,
	combout => \n~2_combout\);

-- Location: LCCOMB_X24_Y5_N6
\n~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~8_combout\ = (\n~2_combout\ & (kpcounter2(2) $ (((kpcounter2(1) & kpcounter2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter2(1),
	datab => kpcounter2(0),
	datac => kpcounter2(2),
	datad => \n~2_combout\,
	combout => \n~8_combout\);

-- Location: LCFF_X24_Y5_N7
\kpcounter2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~8_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter2(2));

-- Location: LCCOMB_X24_Y5_N18
\n~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~11_combout\ = (\n~2_combout\ & (kpcounter2(0) $ (kpcounter2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => kpcounter2(0),
	datac => kpcounter2(1),
	datad => \n~2_combout\,
	combout => \n~11_combout\);

-- Location: LCFF_X24_Y5_N19
\kpcounter2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~11_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter2(1));

-- Location: LCCOMB_X24_Y5_N8
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = kpcounter2(3) $ (((kpcounter2(0) & (kpcounter2(2) & kpcounter2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter2(3),
	datab => kpcounter2(0),
	datac => kpcounter2(2),
	datad => kpcounter2(1),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X24_Y5_N4
\n~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~3_combout\ = (kpcounter2(3) & ((\RST~0\) # ((\Add6~0_combout\ & \n~2_combout\)))) # (!kpcounter2(3) & (((\Add6~0_combout\ & \n~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter2(3),
	datab => \RST~0\,
	datac => \Add6~0_combout\,
	datad => \n~2_combout\,
	combout => \n~3_combout\);

-- Location: LCFF_X24_Y5_N5
\n[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~3_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \n[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y5_N10
\n~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~10_combout\ = (\RST~0\ & (((kpcounter2(0))))) # (!\RST~0\ & (!\input_delay2~regout\ & (\inp2~combout\ & !kpcounter2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_delay2~regout\,
	datab => \inp2~combout\,
	datac => \RST~0\,
	datad => kpcounter2(0),
	combout => \n~10_combout\);

-- Location: LCFF_X24_Y5_N11
\n[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~10_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \n[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y5_N14
\n[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \n[1]~4_combout\ = (\n[2]~reg0_regout\) # ((\n[1]~reg0_regout\) # ((\n[0]~reg0_regout\) # (!\n[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[2]~reg0_regout\,
	datab => \n[1]~reg0_regout\,
	datac => \n[3]~reg0_regout\,
	datad => \n[0]~reg0_regout\,
	combout => \n[1]~4_combout\);

-- Location: LCCOMB_X24_Y5_N12
\n[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \n[1]~5_combout\ = (\Equal3~0_combout\ & (((!\input_delay2~regout\ & \inp2~combout\)) # (!\n[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_delay2~regout\,
	datab => \inp2~combout\,
	datac => \n[1]~4_combout\,
	datad => \Equal3~0_combout\,
	combout => \n[1]~5_combout\);

-- Location: LCCOMB_X24_Y5_N2
\n[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \n[1]~6_combout\ = (\RST~0\) # ((\n[1]~5_combout\ & ((\input_delay~regout\) # (!\inp1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~0\,
	datab => \input_delay~regout\,
	datac => \inp1~combout\,
	datad => \n[1]~5_combout\,
	combout => \n[1]~6_combout\);

-- Location: LCFF_X24_Y5_N29
\kpcounter2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \kpcounter2~0_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => kpcounter2(0));

-- Location: LCCOMB_X24_Y5_N30
\n~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~7_combout\ = (kpcounter2(1) & ((\RST~0\) # ((!kpcounter2(0) & \n~2_combout\)))) # (!kpcounter2(1) & (kpcounter2(0) & ((\n~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => kpcounter2(1),
	datab => kpcounter2(0),
	datac => \RST~0\,
	datad => \n~2_combout\,
	combout => \n~7_combout\);

-- Location: LCFF_X24_Y5_N31
\n[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~7_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \n[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y5_N20
\n~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \n~9_combout\ = (\n~8_combout\) # ((kpcounter2(2) & \RST~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => kpcounter2(2),
	datac => \RST~0\,
	datad => \n~8_combout\,
	combout => \n~9_combout\);

-- Location: LCFF_X24_Y5_N21
\n[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK1~clkctrl_outclk\,
	datain => \n~9_combout\,
	ena => \n[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \n[2]~reg0_regout\);

-- Location: LCCOMB_X4_Y13_N20
\U1|Y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y[0]~0_combout\ = (\n[3]~reg0_regout\) # ((\n[1]~reg0_regout\ & ((!\n[2]~reg0_regout\) # (!\n[0]~reg0_regout\))) # (!\n[1]~reg0_regout\ & ((\n[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datab => \n[3]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y[0]~0_combout\);

-- Location: LCCOMB_X4_Y13_N18
\U1|Y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y[1]~1_combout\ = (\n[3]~reg0_regout\) # ((\n[1]~reg0_regout\ & (!\n[0]~reg0_regout\ & \n[2]~reg0_regout\)) # (!\n[1]~reg0_regout\ & ((\n[2]~reg0_regout\) # (!\n[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datab => \n[3]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y[1]~1_combout\);

-- Location: LCCOMB_X4_Y13_N12
\U1|Y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y[2]~2_combout\ = (!\n[0]~reg0_regout\ & ((\n[1]~reg0_regout\) # (!\n[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y[2]~2_combout\);

-- Location: LCCOMB_X4_Y13_N10
\U1|Y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y[3]~3_combout\ = (\n[3]~reg0_regout\) # ((\n[1]~reg0_regout\ & ((!\n[2]~reg0_regout\) # (!\n[0]~reg0_regout\))) # (!\n[1]~reg0_regout\ & (\n[0]~reg0_regout\ $ (!\n[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datab => \n[3]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y[3]~3_combout\);

-- Location: LCCOMB_X4_Y13_N0
\U1|Y[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y\(4) = ((\n[0]~reg0_regout\) # (\n[2]~reg0_regout\)) # (!\n[1]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y\(4));

-- Location: LCCOMB_X4_Y13_N22
\U1|Y[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y\(5) = (\n[1]~reg0_regout\ $ (!\n[0]~reg0_regout\)) # (!\n[2]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y\(5));

-- Location: LCCOMB_X4_Y13_N16
\U1|Y[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U1|Y[6]~4_combout\ = (\n[1]~reg0_regout\) # ((\n[3]~reg0_regout\) # (\n[0]~reg0_regout\ $ (!\n[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n[1]~reg0_regout\,
	datab => \n[3]~reg0_regout\,
	datac => \n[0]~reg0_regout\,
	datad => \n[2]~reg0_regout\,
	combout => \U1|Y[6]~4_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(3));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(6));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\D[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_D(7));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RS$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RS);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RW~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RW);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EN$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EN);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(1));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(2));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(3));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(5));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|Y[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y1(6));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(0));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(1));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(2));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(3));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(4));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(5));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U1|Y[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y2(6));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(0));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(2));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(3));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \n[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_n(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \n[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_n(1));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \n[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_n(2));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \n[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_n(3));
END structure;


