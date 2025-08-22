const ToDoItem = (props) => {
  const todoItemStyle = {
    display: "flex",
    justifyContent: "space-between",
    border: " 1px solid",
    padding: " 20px",
  };
  const statusChangeHandler = (status, id) => {    
    props.callback.status(status, id);
  };
  const removeTodoHandler = (id) => {
    props.callback.remove(id);
  };
  return (
    <div style={todoItemStyle} key={props.item.id}>
      <label>{props.item.label}</label>
      <select
        value={props.item.status}
        onChange={(e) => statusChangeHandler(e.target.value, props.item.id)}
      >
        <option value="Yet to Start">Yet to Start</option>
        <option value="Start">Start</option>
        <option value="Completed">Completed</option>
      </select>
      <button
        onClick={(e) => {
          removeTodoHandler(props.item.id);
        }}
      >
        x
      </button>
    </div>
  );
};
export default ToDoItem;