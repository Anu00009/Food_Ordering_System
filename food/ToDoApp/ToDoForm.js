const ToDoForm = (props) => {
  const handleSubmit = (e) => {
    e.preventDefault();
    if (e.target[0].value) {
      props.callback.add(e.target[0].value);
      e.target[0].value = "";
    }
  };
  return (
    <form onSubmit={handleSubmit}>
      <label>
        To Do : {" "}
        <input type="text" />
      </label>
      <br />
      <button type="submit">Submit</button>
    </form>
  );
};
export default ToDoForm;
