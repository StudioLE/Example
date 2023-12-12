using NUnit.Framework;

namespace StudioLE.Example.Tests;

internal sealed class ExampleHelpersTests
{
    [Test]
    public void ExampleHelpers_WriteToConsole()
    {
        // Arrange
        const string message = "Hello, world!";

        // Act
        ExampleHelpers.WriteToConsole(message);

        // Assert
        Assert.Pass();
    }
}
