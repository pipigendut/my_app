import types from '../../../constantas/types';

let newState;

const homePage = (
  state = {
    test: 'true',
  },
  action,
) => {
  switch (action.type) {
    case types.TEST:
      newState = {
        ...state,
        test: action.test,
      };
      return newState;
    default:
      return state;
  }
};

export default homePage;
