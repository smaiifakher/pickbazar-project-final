import MessagePageIndex from '@/components/message';
import { ownerAndStaffOnly } from '@/utils/auth-utils';

const Message = () => {
  return <MessagePageIndex />;
};

Message.authenticate = {
  permissions: ownerAndStaffOnly,
};

export default Message;
