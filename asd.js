var api = require('./API.js');
var a = api.getNumdays();
var buy;
var sell;
var profit= -9999;
var days = [];

function Solution() {
    // If you need initialization code, you can write it here!
    // Do not remove.


    
}

Solution.prototype.getBuyDay = function() {
    // Todo: Write your code here!

    while(a >=0){
    
        var b = api.getPriceOnDay(a);
        console.log(b);
        days[a] = b;
 

        a--;
    }
    //buyday
    var a1 = api.getNumdays();
    //sellday
    var a2 = api.getNumdays();
    while(a1 > 0){
        var ab = 0
        while(ab > a2){
            
            
            if(a1<a2){
                
                var profit1 = days[a1] -days[a2];
                if(profit1>profit){
                    profit = profit1
                    buy = a1;
                    sell = a2;
                }
                a2 = a2 +1;
            }

        }
        a1 = a1 -1;
    }
    return buy;
};
      

Solution.prototype.getSellDay = function() {
    // Todo: Write your code here!'
    return sell;
};

module.exports = Solution;