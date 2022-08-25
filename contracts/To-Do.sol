// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

contract ToDos {
    struct ToDo {
        string item;
        bool done;
    }

    ToDo[] public todos;

    function addItem (string calldata _item) public {
        ToDo memory todo;
        todo.item = _item;

        todos.push(todo);
    }

    function updateItem(uint _index, string calldata _item) public {
        ToDo storage todo = todos[_index];
        todo.item = _item;
    }

    function viewItem(uint _index) public view returns (string memory item, bool done) {
    ToDo storage todo = todos[_index];
    return (todo.item, todo.done);
    }

    function toggleDone(uint _index) public {
        ToDo storage todo = todos[_index];
        todo.done = !todo.done;
    }
   
}