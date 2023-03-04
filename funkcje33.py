def input_to_number(input):
    try:
        input = int(input)
        return input
    except:
        try:
            input = float(input)
            return(input)
        except:
            return False
