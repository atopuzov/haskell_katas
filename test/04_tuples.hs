import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
    describe "tuples" $ do
        it "can select it's first value" $ do
            fst (1, 'a') `shouldBe` 1
        it "can select it's second value" $ do
            snd ('a', False) `shouldBe` False
        it "zip can produce tuple pairs" $ do
            zip [1,2,3] [4,5,6] `shouldBe` [(1,4),(2,5),(3,6)]
            zip [1,2,3] ["one","two","three"] `shouldBe` [(1,"one"),(2,"two"),(3,"three")]
            zip [1..] ["apple","orange","cherry"] `shouldBe` [(1,"apple"),(2,"orange"),(3,"cherry")]
        it "can calculate right triangle that has the perimeter of 24" $ do
            let triangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2+b^2==c^2, a+b+c==24]
            triangles `shouldBe` [(6,8,10)]
