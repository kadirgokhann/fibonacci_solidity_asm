contract Fibonacci  {
    function fib(uint _n) view public returns(uint) {
        assembly {
          let n := _n
          let a := 1
          let b := a
          loop:
            jumpi(loopend, eq(n, 0))
            a add swap1
            n := sub(n, 1)
            jump(loop)
          loopend:
          mstore(0, a)
          return(0, 0x20)
} }
    function myfib(uint n) view public returns (uint)
    {
        return(fib(n)) ;
    }
}
