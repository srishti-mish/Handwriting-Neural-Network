function ret = neuron(x,weights,bias)
    ret=1/(1+exp(-1*(x*weights+bias)));
end