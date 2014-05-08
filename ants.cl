#pragma OPENCL EXTENSION cl_intel_printf : enable
#include "colony.h"
__kernel void boo(graph_t graph) {
	//This is to copy over the data to work item
	printf("Hello World\n");
	graph_t this_kernels_graph;
	for (int i = 0; i < 100; i++) {
		printf("a %f", graph[i]);
		//this_kernels_graph[i] = (edge_t){graph[i].attraction, graph[i].pheromone};
		//printf("attraction: %f", this_kernels_graph[i].attraction);
	}
	graph[0] = (edge_t){5609.0, 2345.0};
}
