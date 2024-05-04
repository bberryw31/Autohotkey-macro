CoordMode, Mouse, Window

F3::
{
	loop
	{
		send, {6 down}
		random, R, 4857, 5278
		sleep, %R%
		send, {6 up}
		random, R, 1234, 3456
		sleep, %R%
		send, {Left down}
		random, R, 1234, 3456
		sleep, %R%
		send, {Left up}
		random, R, 1234, 3456
		sleep, %R%
		send, {6 down}
		random, R, 4834, 5256
		sleep, %R%
		send, {6 up}
		random, R, 1234, 3456
		sleep, %R%
		send, {Right down}
		random, R, 1234, 3456
		sleep, %R%
		send, {Right up}
		random, R, 1234, 3456
		sleep, %R%
	}	

}

F4::
{
	reload
}
