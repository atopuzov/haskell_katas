import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO()
main = hspec $ do
    describe "Lambdas" $ do
        it "can express complex mapping logic" $ do
            pending
            {- [1..4] -}
                {- `shouldBe` ["odd", "even", "odd", "even"] -}
        it "can take 2 arguments - like normal functions" $ do
            pending
            {- zipWith (*3) / y) [1,2,3] [4,5,6] -}
                {- `shouldBe` [8.25,12.6,15.5] -}
        it "can pattern match in lambdas" $ do
            pending
            {- [(1,2),(3,4),(5,6)] -}
                {- `shouldBe` [3,7,11] -}
        it "can make flip more expressive" $ do
            pending
            {- flip' (-) 5 3 `shouldBe` -2 -}
