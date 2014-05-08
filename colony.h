#ifndef COLONY_CJA17YRO

#define COLONY_CJA17YRO

typedef struct {
	double attraction;
	double pheromone;
} edge_t;

typedef edge_t* graph_t;

#define get_edge(x,y,w) (y*w + x)

graph_t init();
#endif /* end of include guard: COLONY_CJA17YRO */
