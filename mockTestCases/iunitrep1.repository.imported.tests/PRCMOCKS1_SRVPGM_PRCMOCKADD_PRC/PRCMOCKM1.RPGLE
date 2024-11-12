     HNomain
     D* Mocked Procedure Definition
     DMOCKADD          PR
     D P_VAR1                         5S 0
     D P_VAR2                         5S 0
     D P_RESULT                       5S 0
     DAdd              pr
     D P_var1                         5s 0
     D P_var2                         5s 0
     D P_result                       5s 0

     d Subtract        pr
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_var3                        5s 0

     DMultiply         pr             5s 0
     D P_var1                         5s 0
     D P_var2                         5s 0

     D w_var1          s              5s 0
     D w_var2          s              5s 0
     D w_result        s              5s 0

     d PrcMockadd      pr
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_var3                        5s 0

     d PrcMockSub      pr
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_var3                        5s 0

     d PrcMockmult     pr             5s 0
     d  p_var1                        5s 0
     d  p_var2                        5s 0

     p PrcMockAdd      b                   Export
     d PrcMockAdd      pi
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_result                      5s 0
      /Free

       // Commenting Original Procedure Call
       // CALLP(E) ADD(P_VAR1:P_VAR2:P_RESULT);

       // Adding Mocked Procedure Call
        callp(e) MOCKADD(p_var1:p_var2:p_result);


        *Inlr = *On;
      /End-Free
     p PrcMockAdd      e

     p PrcMockSub      b                   Export
     d PrcMockSub      pi
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_result                      5s 0
      /Free

        callp(e) Subtract(p_var1:p_var2:p_result);

        *Inlr = *On;
      /End-Free
     p PrcMockSub      e

     p PrcMockMult     b                   Export
     d PrcMockMult     pi             5s 0
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  w_result       s              5s 0
      /Free

        w_result = Multiply(p_var1:p_var2);
        return w_result;
        *Inlr = *On;
      /End-Free
     p PrcMockMult     e

     p Add             b                   Export
     d Add             pi
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_var3                        5s 0
      /Free

        p_var3 = p_var1 + p_var2;

        *Inlr = *On;
      /End-Free
     p Add             e

     p Subtract        b
     d Subtract        pi
     d  p_var1                        5s 0
     d  p_var2                        5s 0
     d  p_var3                        5s 0
      /Free

        p_var3 = p_var1 - p_var2;

        *Inlr = *On;
      /End-Free
     p Subtract        e
