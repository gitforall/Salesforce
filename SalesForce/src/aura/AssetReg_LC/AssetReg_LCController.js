({
	add : function(component) {
		var sum = component.get("v.val1") + component.get("v.val2");
        component.set("v.sum" , sum);   
	}
})