if Process.arguments.count != 2 { 
	print("Usage: hello NAME") 
}
else { 
	sayHello(Process.arguments[1]) 
}