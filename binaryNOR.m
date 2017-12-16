OutputPort1=InputPort1;
if strcmp(InputPort1.TypeSignal,'Binary')
    cs=length(InputPort1.Sequence);
    if cs>0
        for m=1:cs
            OutputPort1.Sequence(m)=InputPort1.Sequence(m)||InputPort2.Sequence(m);
            if OutputPort1.Sequence(m)==0
                OutputPort1.Sequence(m)=1;
            else
                OutputPort1.Sequence(m)=0;
            end
        end
    end
end