/* strings.x - demonstration of working with strings via rpc */

struct event {
	char id[3];
	char month[3];
	char date[3];
	char desc[1000];
};

program HISTORY_EVENTS{
	version HISTORY_EVENTS_ADD{
		event Add(event) = 1;
	} = 1;
	version HISTORY_EVENTS_QUERY{
		event Query(event) = 1;
	} = 2;
} = 0x33317452;	
