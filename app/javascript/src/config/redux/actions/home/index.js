import types from '../../../constantas/types';

export const setTest = (test) => {
  return {
    test,
    type: types.TEST,
  };
};
