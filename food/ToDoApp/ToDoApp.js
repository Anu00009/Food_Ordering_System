import { useReducer } from "react";
import ToDoItem from "./ToDoItem";
import ToDoForm from "./ToDoForm";
const reducer = (state, action) => {
  switch (action.type) {
    case "ADD-TODO":
      return [
        ...state,
        { id: Date.now(), label: action.payload, status: "Yet to Start" },
      ];
    case "UPDATE-TODO":
      return state.map((item) =>
        item.id === action.payload.id
          ? { ...item, status: action.payload.status }
          : item
      );
    case "REMOVE-TODO":
      return state.filter((item) => item.id !== action.payload.id);
    default:
      break;
  }
};
const initialState = [];
const ToDoApp = () => {
  const [state, dispatch] = useReducer(reducer, initialState);
  const todoContainer = {
    display: "flex",
    flexDirection: "column",
    margin: "50px auto",
    width: "250px",
  };
  const callback = {
    add: (todo) => {
      dispatch({
        type: "ADD-TODO",
        payload: todo,
      });
    },
    status: (status, id) => {
      dispatch({
        type: "UPDATE-TODO",
        payload: { status, id },
      });
    },
    remove: (id) => {
      dispatch({
        type: "REMOVE-TODO",
        payload: { id },
      });
    },
  };
  return (
    <>
      <h1 style={{ textAlign: "center" }}>To Do List</h1>
      <ToDoForm callback={callback} />
      <div style={todoContainer}>
        {state.map((item) => (
          <ToDoItem item={item} callback={callback} key={item.id} />
        ))}
      </div>
    </>
  );
};
export default ToDoApp;
