lockfile=~/.~lock-locker
menu_options="lock\nsuspend\nlogout\nhibernate\nreboot\nshutdown"

. config_paper.sh

function on_unlock() {
    # this function should be called after i3lock unlocked, remove lockfile and perform other command (if you want)
    rm $lockfile
}

function process_lock() {
    # run i3 lock, when unlocked run on_unlock
    # i3lock -n -i $lock_paper; on_unlock
    lock-multimonitor -i $lock_paper; on_unlock
}

function lock() {
    # if lockfile don't exist run process_lock in forked process and create lockfile
    if [ ! -f $lockfile ]; then
        process_lock & touch $lockfile
    fi
}

function power_action {
    case $1 in
        lock)
            lock
            ;;
        logout)
            i3-msg exit
            ;;
        suspend)
            lock && systemctl suspend
            ;;
        hibernate)
            lock && systemctl hibernate
            ;;
        reboot)
            systemctl reboot
            ;;
        shutdown)
            systemctl poweroff
            ;;
        *)
            echo "nothing"
            exit 2
    esac
    exit 0
}