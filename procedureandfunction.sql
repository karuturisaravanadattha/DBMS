
Procedure FIRST_PROCEDURE compiled


Procedure FIRST_PROCEDURE compiled

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100


PL/SQL procedure successfully completed.


Procedure XYZ compiled

100


PL/SQL procedure successfully completed.


Procedure UPDSALARY compiled


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.

BEGIN DELETEANEMPLOYEE(101); END;
      *
ERROR at line 1:
ORA-06550: line 1, column 7:
PLS-00201: identifier 'DELETEANEMPLOYEE' must be declared
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored

https://docs.oracle.com/error-help/db/ora-06550/


More Details :
https://docs.oracle.com/error-help/db/ora-06550/
https://docs.oracle.com/error-help/db/pls-00201/

Procedure DELETEANEMPLOYEE compiled


PL/SQL procedure successfully completed.


Procedure GETMINMAXSALARIES compiled

LINE/COL  ERROR
--------- -------------------------------------------------------------
0/0       PL/SQL: Compilation unit analysis terminated
4/16      PLS-00201: identifier 'NMUBER' must be declared
Errors: check compiler log
BEGIN GetMinMaxSalaries('HR'); END;
      *
ERROR at line 1:
ORA-06550: line 1, column 7:
PLS-00905: object SYSTEM.GETMINMAXSALARIES is invalid
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored

https://docs.oracle.com/error-help/db/ora-06550/


More Details :
https://docs.oracle.com/error-help/db/ora-06550/
https://docs.oracle.com/error-help/db/pls-00905/

Procedure GETMINMAXSALARIES compiled


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.


Procedure GETMINMAXSALARIES compiled

LINE/COL  ERROR
--------- -------------------------------------------------------------
6/5       PL/SQL: SQL Statement ignored
6/69      PL/SQL: ORA-00942: table or view does not exist
Errors: check compiler log

Procedure GETMINMAXSALARIES compiled

LINE/COL  ERROR
--------- -------------------------------------------------------------
6/5       PL/SQL: SQL Statement ignored
6/69      PL/SQL: ORA-00942: table or view does not exist
Errors: check compiler log
BEGIN GetMinMaxSalaries('HR'); END;
      *
ERROR at line 1:
ORA-06550: line 1, column 7:
PLS-00905: object SYSTEM.GETMINMAXSALARIES is invalid
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored

https://docs.oracle.com/error-help/db/ora-06550/


More Details :
https://docs.oracle.com/error-help/db/ora-06550/
https://docs.oracle.com/error-help/db/pls-00905/

Procedure GETMINMAXSALARIES compiled

Highest HR: 35000
Lowest HR: 35000


PL/SQL procedure successfully completed.

