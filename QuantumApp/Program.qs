namespace GateDemo {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics; // for DumpMachine

    @EntryPoint()
    operation ShowXGate() : Unit {
        use q = Qubit() {
            // Initial state |0>
            Message("Before X:");
            DumpMachine();

            // Apply Pauli-X
            X(q);

            Message("After X:");
            DumpMachine();

            Reset(q);
        }
    }
}
