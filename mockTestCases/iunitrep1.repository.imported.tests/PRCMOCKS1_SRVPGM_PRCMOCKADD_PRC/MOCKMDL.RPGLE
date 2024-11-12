**FREE
     ctl-opt nomain;


        Dcl-Proc MOCKADD Export;

          // Beginning of Mock Procedure
          Dcl-Pi *n;
            P_VAR1 zoned(5:0);
            P_VAR2 zoned(5:0);
            P_VAR3 zoned(5:0);
          End-Pi;

          // Prototype Declaration
          Dcl-Pr ADD;
            P_VAR1 zoned(5:0);
            P_VAR2 zoned(5:0);
            P_VAR3 zoned(5:0);
          End-Pr;


          // Below is the call to the actual procedure which you may comment out
          // if you want to return the received variables with hard-coded values
          // You can add the processing logic based on the scenario to be tested

          ADD(P_VAR1:
          P_VAR2:
          P_VAR3);

          P_VAR3 = 888;

          // The logic required after the actual program call to be written here

          Return;

        End-Proc;

