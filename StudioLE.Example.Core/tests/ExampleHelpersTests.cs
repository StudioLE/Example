using NUnit.Framework;

namespace StudioLE.Example.Core.Tests;

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
    [Test]
    public void ExampleHelpers_Fail()
    {
        // Arrange
        //Act
        // Assert
        Assert.That("This", Is.EqualTo("That"));
    }
}
