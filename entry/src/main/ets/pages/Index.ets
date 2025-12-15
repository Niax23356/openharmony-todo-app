// 修复1: 定义接口类型,不能使用对象字面量作为类型
interface Task {
  text: string;
  done: boolean;
}

@Entry
@Component
struct Index {
  @State tasks: Task[] = [] // 使用接口类型
  @State inputText: string = ''

  build() {
    Column({ space: 12 }) {
      Text('校园待办清单')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)

      Text(`已完成 ${this.tasks.filter((t: Task) => t.done).length} / ${this.tasks.length}`)
        .fontSize(16)

      List() {
        ForEach(this.tasks, (item: Task, index: number) => { // 修复2: 显式类型声明
          ListItem() {
            Row({ space: 10 }) {
              Text(item.text)
                .fontSize(16)
                  // 修复4: 使用 TextDecorationType 而不是 TextDecoration
                .decoration({
                  type: item.done ? TextDecorationType.LineThrough : TextDecorationType.None
                })
                .onClick(() => {
                  this.tasks[index].done = !this.tasks[index].done
                })

              Button('删除')
                .onClick(() => {
                  this.tasks.splice(index, 1)
                })
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            .padding(10)
          }
        }, (item: Task, index: number) => index.toString())
      }
      .height('60%')

      Row({ space: 8 }) {
        TextInput({ placeholder: '输入任务', text: this.inputText })
          .onChange((value: string) => { // 显式类型
            this.inputText = value
          })
          .width('70%')

        Button('添加')
          .onClick(() => {
            if (this.inputText.trim() !== '') {
              // 修复3: 使用接口类型创建对象
              let newTask: Task = { text: this.inputText, done: false }
              this.tasks.push(newTask)
              this.inputText = ''
            }
          })
      }
    }
    .padding(16)
    .width('100%')
    .height('100%')
  }
}