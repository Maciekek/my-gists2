# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
for i in 0..10
  Gist.create(
      lang: "js",
      description: "Some java script code",
      date: "10-02-2014",
      snippet:
      "/*jshint globalstrict: true */
'use strict';

(function() {
	console.log('Lab1 z js');

})();

var f = function(a, b) {
	return a + b;
};

var defFun = function(fun, typeConstr) {

	if ('function' === typeof fun) {
		fun.typeConstr = typeConstr;
	}
	return fun;
};

var appFun = function(f) {

	var i;
	for (i = 1; i < arguments.length; i++) {
		if (typeof arguments[i] !== f.typeConstr[i - 1]) {
			throw ({
				typerr: 'Zły format argumentów',
			});
		}
	}
	return f.apply(this, Array.prototype.slice.call(arguments, 1));
};
try {
	console.log(appFun(defFun(f, ['number', 'number']), 12, 15));
} catch (e) {
	console.log(e.typerr);
}; ")
end


for i in 0..10
  Gist.create(
      lang: "java",
      description: "Java code",
      date: "10-02-2014",
      snippet:
          '	public class BinaryConverter {
    
    public static void main(String[] args){
        for(int i = -5; i < 33; i++){
            System.out.println(i + ": " + toBinary(i));
            System.out.println(i);
            //always another way
            System.out.println(i + ": " + Integer.toBinaryString(i));
        }
    }
    
    /*
     * pre: none
     * post: returns a String with base10Num in base 2
     */
    public static String toBinary(int base10Num){
        boolean isNeg = base10Num < 0;
        base10Num = Math.abs(base10Num);        
        String result = "";
        
        while(base10Num > 1){
            result = (base10Num % 2) + result;
            base10Num /= 2;
        }
        assert base10Num == 0 || base10Num == 1 : "value is not <= 1: " + base10Num;
        
        result = base10Num + result;
        assert all0sAnd1s(result);
        
        if( isNeg )
            result = "-" + result;
        return result;
    }
    
    /*
     * pre: cal != null
     * post: return true if val consists only of characters 1 and 0, false otherwise
     */
    public static boolean all0sAnd1s(String val){
        assert val != null : "Failed precondition all0sAnd1s. parameter cannot be null";
        boolean all = true;
        int i = 0;
        char c;
        
        while(all && i < val.length()){
            c = val.charAt(i);
            
            i++;
        }
        return all;
    }
}')
end