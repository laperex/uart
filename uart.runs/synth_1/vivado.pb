
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/laperex/Programming/Vivado/uart/uart.srcs/utils_1/imports/synth_1/uart_tb.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2U
S/home/laperex/Programming/Vivado/uart/uart.srcs/utils_1/imports/synth_1/uart_tb.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
d
Command: %s
53*	vivadotcl23
1synth_design -top interface -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
P
#Helper process launched with PID %s4824*oasys2	
1103420Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2076.840 ; gain = 403.629 ; free physical = 4208 ; free virtual = 24768
h px� 
�
synthesizing module '%s'%s4497*oasys2
	interface2
 2M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
38@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2L
J/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/data_rom.txt2M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
448@Z8-3876h px� 
�
synthesizing module '%s'%s4497*oasys2
	m_uart_tx2
 2H
D/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/uart.v2
18@Z8-6157h px� 
Q
%s
*synth29
7	Parameter CLKS_PER_BIT bound to: 869 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	m_uart_tx2
 2
02
12H
D/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/uart.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	interface2
 2
02
12M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
38@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
counter_reg2M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
628@Z8-6014h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[15]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[14]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[13]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[12]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[11]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[10]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[9]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[8]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[7]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[6]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[5]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[4]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[3]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[2]2
0Z8-3917h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2152.777 ; gain = 479.566 ; free physical = 4117 ; free virtual = 24677
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2170.590 ; gain = 497.379 ; free physical = 4156 ; free virtual = 24667
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2170.590 ; gain = 497.379 ; free physical = 4156 ; free virtual = 24667
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2170.5902
0.0002
41562
24667Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2M
I/home/laperex/Programming/Vivado/uart/uart.srcs/constrs_1/new/basys_3.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2M
I/home/laperex/Programming/Vivado/uart/uart.srcs/constrs_1/new/basys_3.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2K
I/home/laperex/Programming/Vivado/uart/uart.srcs/constrs_1/new/basys_3.xdc2
.Xil/interface_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2315.3402
0.0002
41312
24639Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2315.3752
0.0002
41312
24639Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4168 ; free virtual = 24632
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4168 ; free virtual = 24632
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4168 ; free virtual = 24632
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4163 ; free virtual = 24628
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 3     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  16 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 4     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[15]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[14]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[13]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[12]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[11]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
	interface2	
led[10]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[9]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[8]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[7]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[6]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[5]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[4]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[3]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	interface2
led[2]2
0Z8-3917h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
led02
1st2
led0_inferred/led02M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
198@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
led02
2nd2
GND2M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
198@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
led02M
I/home/laperex/Programming/Vivado/uart/uart.srcs/sources_1/new/interface.v2
198@Z8-6858h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4165 ; free virtual = 24635
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4197 ; free virtual = 24662
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4197 ; free virtual = 24662
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24661
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |BUFG |     1|
h px� 
0
%s*synth2
|2     |LUT1 |     2|
h px� 
0
%s*synth2
|3     |LUT2 |     6|
h px� 
0
%s*synth2
|4     |LUT3 |    10|
h px� 
0
%s*synth2
|5     |LUT4 |    14|
h px� 
0
%s*synth2
|6     |LUT5 |     6|
h px� 
0
%s*synth2
|7     |LUT6 |    16|
h px� 
0
%s*synth2
|8     |FDRE |    35|
h px� 
0
%s*synth2
|9     |IBUF |     2|
h px� 
0
%s*synth2
|10    |OBUF |    17|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4196 ; free virtual = 24665
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 3 critical warnings and 15 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 497.379 ; free physical = 4195 ; free virtual = 24664
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2315.375 ; gain = 642.164 ; free physical = 4195 ; free virtual = 24664
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2315.3752
0.0002
41942
24663Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2315.3752
0.0002
44402
24942Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1e6fc695Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242
302
32
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:152

00:00:142

2315.3752	
969.2342
44452
24946Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1902.491; main = 1569.255; forked = 383.321Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 3266.906; main = 2315.344; forked = 983.578Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2339.3522
0.0002
44452
24946Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2G
E/home/laperex/Programming/Vivado/uart/uart.runs/synth_1/interface.dcpZ17-1381h px� 
�
%s4*runtcl2j
hExecuting : report_utilization -file interface_utilization_synth.rpt -pb interface_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Apr 23 09:47:26 2024Z17-206h px� 


End Record