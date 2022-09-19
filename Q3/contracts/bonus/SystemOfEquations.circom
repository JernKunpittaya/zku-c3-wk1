pragma circom 2.0.0;

include "../../node_modules/circomlib/circuits/comparators.circom";
include "../../node_modules/circomlib-matrix/circuits/matMul.circom"; // hint: you can use more than one templates in circomlib-matrix to help you

template SystemOfEquations(n) { // n is the number of variables in the system of equations
    signal input x[n]; // this is the solution to the system of equations
    signal input A[n][n]; // this is the coefficient matrix
    signal input b[n]; // this are the constants in the system of equations
    signal output out; // 1 for correct solution, 0 for incorrect solution

    // [bonus] insert your code here
    component mul = matMul(n,n,1);
    for (var i=0;i<n;i++) {
        mul.b[i][0] <== x[i];
	for (var j=0;j<n;j++) {
            mul.a[i][j] <== A[i][j];
        } 
    } 

    component isEqual[n];
    signal mem[n];

    isEqual[0] = IsEqual();
    isEqual[0].in[0] <== mul.out[0][0];
    isEqual[0].in[1] <== b[0];
    mem[0] <== isEqual[0].out;

    for (var i=1; i<n; i++) {
        isEqual[i] = IsEqual();
        isEqual[i].in[0] <== mul.out[i][0];
        isEqual[i].in[1] <== b[i];
        mem[i] <== mem[i-1] * isEqual[i].out;
    }
    out <== mem[n-1];



}

component main {public [A, b]} = SystemOfEquations(3);