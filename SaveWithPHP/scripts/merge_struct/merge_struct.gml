// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function merge_struct(base_struct,sub_struct) {
	//# 누락된 변수가 존재하면 default_struct의 변수로 대체
	var struct = sub_struct;
	var names = variable_struct_get_names(base_struct);
	var name;
	for(i=0;i<array_length(names);i++)
	{
		name = names[i];
		if !variable_struct_exists(struct,name)
		{
			variable_struct_set(struct,name,
				variable_struct_get(base_struct,name));
		}
	}
	return struct;
}