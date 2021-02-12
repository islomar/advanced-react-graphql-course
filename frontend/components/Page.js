export default function Page(props) {
  return (
    <div>
      <h2>I am the page component</h2>
      {props.children}
    </div>
  );
}
