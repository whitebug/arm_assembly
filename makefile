OBJS = HelloWorld.o

%.o: %.s
	as $< -o $@
HelloWorld: $(OBJS)
	ld -o HelloWorld $(OBJS)
