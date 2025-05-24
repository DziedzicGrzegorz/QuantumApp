# Use .NET 6.0 SDK as the base image
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Set the working directory
WORKDIR /app

# Install the Microsoft Quantum Development Kit tools
RUN dotnet tool install -g Microsoft.Quantum.IQSharp
ENV PATH="${PATH}:/root/.dotnet/tools"

# Copy the project files
COPY QuantumApp/ ./QuantumApp/
COPY QuantumApp.sln .

# Create a debug wrapper script that ensures output is visible
RUN echo '#!/bin/bash\n\
    echo "Starting Q# application..."\n\
    echo "Current directory: $(pwd)"\n\
    echo "Files in QuantumApp directory:"\n\
    ls -la QuantumApp/\n\
    echo "Running dotnet command..."\n\
    cd /app\n\
    # Use -v for verbose output\n\
    dotnet run -v n --project QuantumApp/QuantumApp.csproj\n\
    echo "Application execution completed."\n\
    ' > /app/run.sh && \
    chmod +x /app/run.sh

# Set the entry point
ENTRYPOINT ["/app/run.sh"]

# Use CMD as an empty array to ensure arguments can be passed
CMD []