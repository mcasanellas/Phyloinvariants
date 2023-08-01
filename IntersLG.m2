--K80 to JC69
R = QQ[q1,q2,q3,q4,q5,q6,q7,q8,q9,q10];
IK80 =ideal(q1*q6*q9-q2*q4*q10,q3*q5*q9-q2*q7*q10,q5*q6*q8-q4*q7*q10,q2*q6*q8-q3*q4*q9,q2*q5*q8-q1*q7*q9,q3*q4*q5-q1*q6*q7,q1*q3*q9^2-q2^2*q8*q10,q1*q6^2*q8-q3*q4^2*q10,q3*q5^2*q8-q1*q7^2*q10);
--ideal LG: permute G with C and G with T
LG=ideal(q2-q3,q6-q7,q7-q9,q4-q8,q5-q10);
Inter=IK80+LG;
minimalPrimes Inter
--gives unique minimal prime : {ideal(q7-q9,q6-q9,q5-q10,q4-q8,q2-q3,q1*q9^2-q3*q8*q10)}  which coincides with JC69 variety:  qAAA*qCGT^2-qACC*qCAC*qCCA

pI = primaryDecomposition Inter
--same unique ideal as before

--K81 to K80
R = QQ[q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16];

IK81 =ideal(
q1*q8*q15-q3*q5*q16,
q4*q6*q15-q2*q7*q16,
q7*q12*q14-q8*q10*q15,
q1*q12*q14-q2*q9*q16,
q5*q11*q14-q6*q9*q15,
q4*q11*q14-q3*q10*q16,
q6*q12*q13-q5*q10*q16,
q3*q12*q13-q4*q9*q15,
q8*q11*q13-q7*q9*q16,
q2*q11*q13-q1*q10*q15,
q2*q8*q13-q4*q5*q14,
q3*q6*q13-q1*q7*q14,
q2*q8*q11-q3*q6*q12,
q4*q5*q11-q1*q7*q12,
q2*q7*q9-q3*q5*q10,
q4*q6*q9-q1*q8*q10,
q1*q4*q14*q15-q2*q3*q13*q16,
q6*q8*q13*q15-q5*q7*q14*q16,
q1*q6*q12*q15-q2*q5*q11*q16,
q4*q8*q11*q15-q3*q7*q12*q16,
q11*q12*q13*q14-q9*q10*q15*q16,
q4*q6*q12*q14-q2*q8*q10*q16,
q3*q5*q12*q14-q2*q8*q9*q15,
q1*q8*q11*q14-q3*q6*q9*q16,
q2*q7*q11*q14-q3*q6*q10*q15,
q1*q8*q12*q13-q4*q5*q9*q16,
q2*q7*q12*q13-q4*q5*q10*q15,
q4*q6*q11*q13-q1*q7*q10*q16,
q3*q5*q11*q13-q1*q7*q9*q15,
q3*q8*q10*q13-q4*q7*q9*q14,
q2*q6*q9*q13-q1*q5*q10*q14,
q5*q8*q10*q11-q6*q7*q9*q12,
q2*q4*q9*q11-q1*q3*q10*q12,
q3*q4*q5*q6-q1*q2*q7*q8);

--LG: permute C and T
LG=ideal(q4-q2,q12-q10,q13-q5,q14-q8,q15-q7,q16-q6);
Inter2=IK81+LG;
mp=minimalPrimes Inter2
--a unique ideal: {ideal(q10-q12,q8-q14,q7-q15,q6-q16,q5-q13,q2-q4,q1*q14*q15-q3*q13*q16,q11*q13*q14-q9*q15*q16,q1*q12*q14-q4*q9*q16,q4*q11*q14-q3*q12*q16,q3*q12*q13-q4*q9*q15,q4*q11*q13-q1*q12*q15,q1*q11*q14^2-q3*q9*q16^2,q3*q11*q13^2-q1*q9*q15^2,q4^2*q9*q11-q1*q3*q12^2)} 
which coincidides with K80 variety of deg 12

G gens gb Inter2
degree ideal(G) --gives 12





