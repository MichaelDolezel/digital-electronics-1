@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Feb 24 11:40:45 +0100 2022
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto aa4d52b4b6eb4fdf8712fa2dee08211f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_comparator_4bit_behav xil_defaultlib.tb_comparator_4bit -log elaborate.log"
call xelab  -wto aa4d52b4b6eb4fdf8712fa2dee08211f --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_comparator_4bit_behav xil_defaultlib.tb_comparator_4bit -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
