def read_mapping(file2):
    # Read the mapping file (file2) and create a dictionary of IDs to names
    mapping = {}
    with open(file2, 'r') as f:
        for line in f:
            line = line.strip()
            if line:
                name, id = line.split(':')
                mapping[id.strip()] = name.strip()
    return mapping


def substitute_ids(file1, mapping,output_path):
    # Read file1, substitute the IDs with names based on the mapping, and write the result to a new file
    with open(file1, 'r') as f:
        lines = f.readlines()

    substituted_lines = []
    for line in lines:
         # line = line.strip()
        if line:
            fffs = line.split(':')
            id=fffs[0]
            field = fffs[1:]
            name = mapping.get(id.strip())
            if name:
                substituted_lines.append(f'{name} : {" ".join(field)}\n')
            else:
                substituted_lines.append(line + '\n')

    with open(output_path, 'w') as f:
        f.writelines(substituted_lines)


# Usage
file1_path = '/tmp/func_profile.txt'
file2_path = '/home/ub1804/cps_platform/turtlebot/catkin_ws/func2id.txt'
output_path = '/tmp/output.txt'

mapping = read_mapping(file2_path)
# print(mapping)
substitute_ids(file1_path, mapping,output_path)