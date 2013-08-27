### Current Issues

1. Dependency between two non-consecutive instructions. May need a dependency graph. **[** *Critical* **]**
2. Variable pipelines. Hardware will be parameterized so that the stages change from 5 ~ 9. Not sure how to do this in the simulator.

### Resolved

1. Optimization of O3. Small loops get optimized completely. Haven't had the chance to try out volatile. Resolution: added volatile identifier.
2. Branch delay issue. Resolution: Added branch delay slot in simulator. 
3. Stalling and data forwarding. Simulator has this features, but the processor doesn't. Resolution: Created a document called hardware disputes to track this.
