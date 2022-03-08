-- https://learnxinyminutes.com/docs/zh-cn/lua-cn/

print("123")

function abc(a)
    print(111, a)
end

abc(123)

local path = os.getenv("PATH")
print(path)

local a, b ,c = os.execute("ls")
print(a, b, c)

local i = 0
while i < 10 do
    i = i + 1
    print(i)
end

if i < 10 then
    print(i)
else
    print("abc", i)
end

io.write("123")

print("abc:" .. i)


for n = 1, 10, 1 do
    print(n)
end

repeat
    i = i - 1
until i == 0

t1 = {abc= 123, aaa= "223"}
print(t1.aaa, t1.abc)
t1.xxx = "hello"
t1.abc = "world"
t1.aaa = nil
for key, value in pairs(t1) do
    print(key, value)
end

function th(tp) print(tp.key) end

th{key=123}

for key, value in pairs(_G) do
    print(key, value)
end

list = {1, 2,"a", "b", "C"}
print(#list)
for key, value in pairs(list) do
    print(key, value)
end

for i = 1, #list do
    print(list[i])
end

local mod = require("mod")
print(mod)
mod.abc()
mod.xxx()

local f = loadfile('mod.lua')
print(f)
f()
if f == nil then
    return
end

abc()


require("abc.mod2")
require("abc.mod2")

local uri = "/abc/test"
local idx = string.find(uri, "?")
if idx ~= nil then
    local result = string.sub(uri, idx+1)
    print(result, idx)
end

local ts = 1646732921896
print(tostring(ts), string.sub(tostring(ts), string.len(ts)-2))