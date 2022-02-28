-- https://learnxinyminutes.com/docs/zh-cn/lua-cn/

print("123")

function abc(a)
    print(111, a)
end

abc(123)

local path = os.getenv("PATH")
print(path)