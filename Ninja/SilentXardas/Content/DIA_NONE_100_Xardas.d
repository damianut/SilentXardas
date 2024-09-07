// Start the first dialogue only, when Xardas is in ZS_Talk, so when player clicked him.
func int Ninja_SilentXardas_DIA_Xardas_Hello_Condition()
{
    if (MEM_FindParserSymbol("ZS_TALK") != -1) {
        // Push any necessary arguments onto the stack in the order of the function's parameters
        MEM_PushInstParam(self);
        MEM_PushIntParam(MEM_FindParserSymbol("ZS_TALK"));
        
        // Call the function in a safe way
        MEM_CallByString("NPC_ISINSTATE");
        
        // Cancel only if condition is not met otherwise continue with more conditions
        if (!MEM_PopIntResult()) {
            return false;
        };
    };
    
    // Continue with the original function (and its return value)
    ContinueCall();
};
