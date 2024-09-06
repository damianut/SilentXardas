// Start the first dialogue only, when Xardas is in ZS_Talk, so when player clicked him.
func int Ninja_SilentXardas_DIA_Xardas_Hello_Condition()
{
    if (MEM_FindParserSymbol("ZS_TALK") != -1) {
        // Push any necessary arguments onto the stack in the order of the function's parameters
        MEM_PushInstParam(MEM_FindParserSymbol("ZS_TALK"));
        MEM_PushInstParam(hero);
        
        // Call the function in a safe way
        MEM_CallByString("NPC_ISINSTATE");
        
        // Use the returned value
        return MEM_PopIntResult();
    } else {
        // Optionally provide a fallback if the function does not exist
        return true;
    };
};
