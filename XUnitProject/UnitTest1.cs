using System;
using Xunit;

namespace XUnitProject
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            int res = 1;
            int check = 1;
            Assert.Equal(res, check);

        }
    }
}
