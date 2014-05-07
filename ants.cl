#define ARRSIZE 100
__kernel void boo(__global graph_t graph)
	//This is to copy over the data to work item
	printf("Hello World\n");
	//graph_t this_kernels_graph;
	for (int i = 0; i < ARRSIZE; i++) {
		//this_kernels_graph[i].attraction = graph[i].attraction;
		//this_kernels_graph[i].pheromone = graph[i].pheromone;
		//printf("attraction: %f", this_kernels_graph[i].attraction);
	}

}
