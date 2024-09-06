// Start the first dialogue only, when Xardas is in ZS_Talk, so when player clicked him.
func int Ninja_SilentXardas_DIA_Xardas_Hello_Condition()
{
    if (true == Npc_IsInState(self, ZS_TALK))
    {
        return TRUE;
    };
};
