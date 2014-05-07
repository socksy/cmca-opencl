#include <stdlib.h>
#include "colony.h"

#define NO_NODES 10

graph_t init() 
{
	graph_t graph = malloc(sizeof(edge_t) * NO_NODES * NO_NODES);

	//whatever, everything attached to everything
	for (int i = 0; i < NO_NODES; i++) {
		for (int j = 0; j < NO_NODES; j++) {
			if (i!=j) {
				graph[get_edge(i,j,NO_NODES)] = (edge_t) {1,0};
			} else {
				graph[get_edge(i,j,NO_NODES)] = (edge_t){0,0};
			}
		}
	}
	return graph;
}
