arr=[1,2,3]
arr2=[3,4,5]


function sumarr (...arrs){
    let total=0;
    arrs.forEach((arr)=>{
arr.forEach((ele)=>{
total+=ele
})
    })
    return total;
}
console.log(sumarr);
function sumArray(arr) {
    return arr.reduce((sum, num) => sum + num, 0);
}

console.log(sumArray([1, 2, 3, 4])); 