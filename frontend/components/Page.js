import { PropTypes } from 'prop-types';

export default function Page({ children, cool }) {
  return (
    <div>
      <h2>I am the page component</h2>
      {children}
      <h3>{cool}</h3>
    </div>
  );
}

Page.propTypes = {
  cool: PropTypes.string,
  children: PropTypes.arrayOf(PropTypes.node),
};
