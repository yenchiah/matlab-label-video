function keyDownListenerLabelDataSimple( src,event,num_frames,data_mat,label_simple_mat,label_simple_idx,show_has_label_only )
    global t
    toggle = -1;
    update_flag = false;
    if(strcmp(event.Key,'rightarrow'))
        if(show_has_label_only==0 && t<num_frames)
            t = t + 1;
            update_flag = true;
        elseif(show_has_label_only==1 && t<label_simple_idx(end))
            next = find(has_label_idx>t);
            t = has_label_idx(next(1));
            update_flag = true;
        end
    elseif(strcmp(event.Key,'leftarrow'))
        if(show_has_label_only==0 && t>1)
            t = t - 1;
            update_flag = true;
        elseif(show_has_label_only==1 && t>label_simple_idx(1))
            previous = find(has_label_idx<t);
            t = has_label_idx(previous(end));   
            update_flag = true;
        end
    elseif(strcmp(event.Key,'1'))
        toggle = 1;
        update_flag = true;
    elseif(strcmp(event.Key,'2'))
        toggle = 2;
        update_flag = true;
    elseif(strcmp(event.Key,'3'))
        toggle = 3;
        update_flag = true;
    elseif(strcmp(event.Key,'4'))
        toggle = 4;
        update_flag = true;
    elseif(strcmp(event.Key,'5'))
        toggle = 5;
        update_flag = true;
    elseif(strcmp(event.Key,'6'))
        toggle = 6;
        update_flag = true;
    elseif(strcmp(event.Key,'7'))
        toggle = 7;
        update_flag = true;
    elseif(strcmp(event.Key,'8'))
        toggle = 8;
        update_flag = true;
    elseif(strcmp(event.Key,'9'))
        toggle = 9;
        update_flag = true;
    elseif(strcmp(event.Key,'delete'))
        toggle = 0;
        update_flag = true;
    end

    if(update_flag)
        if(toggle ~= -1)
            labelOneFrameSimple(t,num_frames,data_mat,label_simple_mat,toggle);
        else
            showOneFrameSimple(t,num_frames,data_mat,label_simple_mat);
        end
    end
end