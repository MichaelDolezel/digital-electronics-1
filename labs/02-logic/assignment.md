# Lab 2: JAN GROSS 230067

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:
   
   <img src="https://github.com/garry474/digital-electronics-1/blob/main/labs/02-logic/Images/K_map_greater.png" width=20% height=20%>


   Less than:
   
   <img src="https://github.com/garry474/digital-electronics-1/blob/main/labs/02-logic/Images/K_map_less.png" width=20% height=20%>


2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   <img src="https://github.com/garry474/digital-electronics-1/blob/main/labs/02-logic/Images/Geater_SoP.png" width=30% height=30%>
   <img src="https://github.com/garry474/digital-electronics-1/blob/main/labs/02-logic/Images/Less_PoS.png" width=30% height=30%>
   

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx67**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
                       s_b <= "0110"; -- 230067 (6)
        		s_a <= "0111";  -- 230067 (7)
        		wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0110, 0111 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![your figure](https://github.com/garry474/digital-electronics-1/blob/main/labs/02-logic/Images/codereport.png)

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/x/apkr](https://www.edaplayground.com/x/apkr)
