% This program simulates an electrical attenuator
% Input parameter-attenuation constant [db]
% Create an output structure similar to the input
OutputPort1=InputPort1;
% Attenuation constants
attenuation=Parameter0;
if InputPort1.TypeSignal=='Optical'
    cs=length(InputPort1.Sampled);
    if cs>0
        % Calculate the signal attenuated
        OutputPort1.Sampled.Signal=InputPort1.Sampled.Signal*exp(-0.2303*attenuation/2);
    end
end