if CommandLine.arguments.count != 2 { 
	print("Usage: hello NAME") 
}
else { 
	print(sayHello(name: CommandLine.arguments[1])) 
}